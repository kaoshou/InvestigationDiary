[app]
title = Investigation Diary
package.name = investigationdiary
package.domain = org.gameproject

source.dir = .
source.include_exts = py,json,png,jpg,jpeg,ttf,wav,mp3
source.include_patterns = assets/*,assets/**,data/*,data/**
source.exclude_dirs = .git,.venv,build,dist,release,__pycache__

version = 0.1.0
orientation = portrait
fullscreen = 1

# Pygame on Android is fragile across Python/p4a versions. Keep this pinned
# unless the Android build is re-tested end to end.
requirements = python3==3.10.12,hostpython3==3.10.12,kivy==2.3.0,pyjnius==1.5.0,pygame

presplash.filename = assets/start_background.png
icon.filename = assets/icon.png

android.permissions =
android.api = 35
android.minapi = 23
android.archs = arm64-v8a
android.accept_sdk_license = True

[buildozer]
log_level = 2
warn_on_root = 1
