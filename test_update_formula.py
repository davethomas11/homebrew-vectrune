"""Formula regeneration must preserve optional offline manual installation."""
import unittest
from pathlib import Path
import subprocess
import tempfile

from update_formula import build_formula


class FormulaTests(unittest.TestCase):
    def test_regeneration_preserves_man_installation_and_old_archive_support(self):
        assets = {
            platform: dict(url=f'https://example.com/{platform}.tar.gz', sha256='0' * 64)
            for platform in ['macos-arm64', 'macos-x86_64', 'linux-arm64', 'linux-x86_64']
        }
        formula = build_formula('1.2.3', assets)
        self.assertIn('version "1.2.3"', formula)
        self.assertIn('bin.install "vectrune"', formula)
        self.assertIn('if (buildpath/"man").directory?', formula)
        self.assertIn('man1.install "man/man1/vectrune.1"', formula)
        self.assertIn('man7.install "man/man7/vectrune-language.7"', formula)
        self.assertEqual(formula.count('sha256 '), 4)

    def test_formula_installs_bundled_pages_and_accepts_legacy_archives(self):
        # Execute the real install method with local Homebrew DSL/destination
        # stubs, without fetching a release or modifying an installed package.
        harness = r'''
require "pathname"
require "fileutils"
class Destination
  def initialize(path)
    @path = path
  end
  def install(source)
    FileUtils.mkdir_p(@path)
    FileUtils.cp(source, @path)
  end
end
class Formula
  def self.method_missing(*args, &block)
    block.call if block
  end
  def buildpath
    Pathname.pwd
  end
  def bin
    Destination.new("installed/bin")
  end
  def man1
    Destination.new("installed/share/man/man1")
  end
  def man7
    Destination.new("installed/share/man/man7")
  end
end
load ARGV.fetch(0)
Vectrune.new.install
'''
        formula = Path(__file__).with_name('vectrune.rb').resolve()
        for with_manuals in [False, True]:
            with self.subTest(with_manuals=with_manuals), tempfile.TemporaryDirectory() as folder:
                root = Path(folder)
                (root / 'vectrune').write_text('binary')
                if with_manuals:
                    for page in ['man1/vectrune.1', 'man7/vectrune-language.7']:
                        path = root / 'man' / page
                        path.parent.mkdir(parents=True, exist_ok=True)
                        path.write_text('manual')
                subprocess.run(['ruby', '-e', harness, str(formula)], cwd=folder, check=True)
                self.assertEqual((root / 'installed/bin/vectrune').read_text(), 'binary')
                for page in ['man1/vectrune.1', 'man7/vectrune-language.7']:
                    installed = root / 'installed/share/man' / page
                    self.assertEqual(installed.exists(), with_manuals)
                    if with_manuals:
                        self.assertEqual(installed.read_text(), 'manual')


if __name__ == '__main__':
    unittest.main()
