# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions and gpl

# Improvements
- Compatible with dxvk 2.1 and 2.2
- Async can be used at same time as graphics pipeline library.
- DXVK state cache should work properly with async and gpl if using gplAsyncCache option. May cause crashes on some drivers.

# Options
Async is enabled with DXVK_ASYNC=1 environment variable or dxvk.enableAsync=true in dxvk.conf.
State cache fixes are enabled using DXVK_GPLASYNCCACHE=1 environment variable or dxvk.gplAsyncCache=true.

# DXVK state cache
I found way to use state cache while gpl is enabled. Pipelines are created first with gpl, then they are compiled without gpl in background and then they are written to cache. Starting with 2.2-3 release this is enabled using gplAsyncCache option. In 2.2-2 they are enabled always and that version does not work on all drivers.