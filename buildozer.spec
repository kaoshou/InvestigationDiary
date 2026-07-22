[app]
title = 菜鳥調查隊日記
package.name = InvestigationDiary
package.domain = tw.yuhan

source.dir = .
source.include_exts = py,json,png,jpg,jpeg,ttf,wav,mp3
source.include_patterns = assets/*,assets/**,data/*,data/**
source.exclude_dirs = .git,.venv,build,dist,release,__pycache__,assets/background

version = 1.0.1
orientation = portrait
fullscreen = 1

# Keep Android requirements narrow. This project is a pygame app and does not
# use Kivy/pyjnius; adding them makes the APK build compile unrelated native
# dependencies and currently breaks on GitHub Actions.
requirements = python3==3.10.12,hostpython3==3.10.12,pygame

presplash.filename = assets/start_background.png
icon.filename = assets/icon.png

android.permissions =
android.api = 36
android.minapi = 24
android.numeric_version = 102410001
android.archs = arm64-v8a
android.accept_sdk_license = True
android.release_artifact = aab

[buildozer]
log_level = 2
warn_on_root = 1
