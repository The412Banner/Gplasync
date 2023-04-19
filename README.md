# dxvk-gplasync
https://github.com/Sporif/dxvk-async updated to work with newer dxvk versions and state cache 

# Improvements
- Compatible with dxvk 2.1
- Async can be used at same time as graphics pipeline library.
- DXVK state cache works with async and gpl.

# DXVK state cache
I found way to use state cache while gpl is enabled, this can reduce stutter. Pipelines are created first with gpl, then they are compiled without gpl in background and then they are written to cache. This is done in new 2.1-2 version (previous release was renamed to v2.1-1), but i found that i accidentally broke state cache while gpl is disabled in that version, this is fixed in 2.1-3.