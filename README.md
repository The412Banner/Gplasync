# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions and gpl

## USE AT YOUR OWN RISK IN GAMES WITH ANTICHEAT
I have not heard of any bans happening because of this but there is chance that some anticheat could get triggered because of async.

# Improvements
- Compatible with dxvk 2.1, 2.2, patch for dxvk git available in [test branch](https://gitlab.com/Ph42oN/dxvk-gplasync/-/tree/test/patches)
- Async can be used at same time as graphics pipeline library.
- DXVK state cache should work properly with async and gpl if using gplAsyncCache option. May cause crashes on some drivers.

# Options
Async is enabled with DXVK_ASYNC=1 environment variable or dxvk.enableAsync=true in dxvk.conf.
State cache fixes are enabled using DXVK_GPLASYNCCACHE=1 environment variable or dxvk.gplAsyncCache=true.
I have added patch to support global dxvk.conf, it will first look for dxvk.conf normally, if not found it checks for /home/$USER/.config/dxvk.conf and %APPDATA%/dxvk.conf.

# DXVK state cache
I found way to use state cache while gpl is enabled. Pipelines are created first with gpl, then they are compiled without gpl in background and then they are written to cache. Starting with 2.2-3 release this is enabled using gplAsyncCache option. In 2.2-2 they are enabled always and that version does not work on all drivers.

# About VRAM usage
Graphics pipeline library can increase VRAM usage, due to this if you are low on VRAM, it can be better to disable it.  That can be done with option dxvk.enableGraphicsPipelineLibrary=false in dxvk.conf.
