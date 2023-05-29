# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions and state cache 

# Improvements
- Compatible with dxvk 2.1 and 2.2
- Async can be used at same time as graphics pipeline library.
- DXVK state cache works with async and gpl.

# DXVK state cache
I found way to use state cache while gpl is enabled. Pipelines are created first with gpl, then they are compiled without gpl in background and then they are written to cache. Because async caused cache to grow larger and that caused performance issues at some point, i made it write less to cache when async is enabled. In 2.2-2 release i found how to properly fix state cache when both async and gpl are enabled, but with only async cache still stays smaller.