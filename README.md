# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions

# Improvements
- Compatible with dxvk 2.1 and 2.2
- Async can be used at same time as graphics pipeline library.
- DXVK state cache works with async and gpl if using gplAsyncCache option.

# Options
Async is enabled with DXVK_ASYNC=1 environment variable or dxvk.enableAsync=true in dxvk.conf.
State cache fixes are enabled using DXVK_GPLASYNCCACHE=1 environment variable or dxvk.gplAsyncCache=true. May cause crashes on some drivers.

# DXVK state cache
I found way to use state cache while gpl is enabled. Pipelines are created first with gpl, then they are compiled without gpl in background and then they are written to cache. Because async caused cache to grow larger and that caused performance issues at some point, i made it write less to cache when async is enabled. In 2.2-2 release state cache should work correctly when both async and gpl are enabled, but with only async cache still stays smaller.