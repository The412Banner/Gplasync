# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions and gpl.

Async allows frames to be drawn before shaders finish compiling, giving reduced stuttering in many games. GPL is dxvk feature to reduce stuttering, and this patch enables using both of them with goal of giving as little stuttering as possible.

## USE AT YOUR OWN RISK IN GAMES WITH ANTICHEAT
I have not heard of any bans happening because of this but there is chance that some anticheat could get triggered because of async.

# Improvements
- Compatible with dxvk 2.1 and above, patch for latest dxvk git will be [here](https://gitlab.com/Ph42oN/dxvk-gplasync/-/blob/main/patches/dxvk-gplasync-master.patch?ref_type=heads). Weekly git builds now available in [artifacts](https://gitlab.com/Ph42oN/dxvk-gplasync/-/artifacts).
- Async can be used at same time as graphics pipeline library.
- DXVK state cache should work properly with async and gpl if using gplAsyncCache option. May cause crashes on some drivers.

# Options
Async is enabled with DXVK_ASYNC=1 environment variable or dxvk.enableAsync=true in dxvk.conf.
State cache fixes and and using it with GPL is enabled using DXVK_GPLASYNCCACHE=1 environment variable or dxvk.gplAsyncCache=true.
I have added patch to support global dxvk.conf, it will first look for dxvk.conf normally, if not found it checks for /home/$USER/.config/dxvk.conf and %APPDATA%/dxvk.conf.

# DXVK state cache
State cache can be used together with GPL that is not possible on upstream DXVK, but it can be useful depending on game.

# About VRAM usage
Graphics pipeline library can increase VRAM usage, due to this if you are low on VRAM, it can be better to disable it.  That can be done with option dxvk.enableGraphicsPipelineLibrary=false in dxvk.conf.

# Memory defrag
New memory defrag feature that was added in dxvk 2.5 might cause some graphical glitching when combined with async. I disabled it by default with v2.5.1-2 release, but with further testing it seems to have stopped happening, im not really sure why it was happening. I decided to re-enable it in 2.5.2-1 release. If you see graphical glitches appear after you have been running game for a while, try disabling memory defrag with option dxvk.enableMemoryDefrag=false.
