import sys
import buildozer.targets.android

# Monkey patch buildozer's package name lowercase logic to preserve case
def custom_get_package(self):
    config = self.buildozer.config
    package_domain = config.getdefault('app', 'package.domain', '')
    package = config.get('app', 'package.name')
    if package_domain:
        package = package_domain + '.' + package
    return package

buildozer.targets.android.TargetAndroid._get_package = custom_get_package

# Run buildozer main client
from buildozer.scripts.client import main
if __name__ == '__main__':
    sys.argv[0] = 'buildozer'
    main()
