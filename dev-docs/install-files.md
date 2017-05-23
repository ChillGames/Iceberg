WORK IN PROGRESS

Planned Installation Folder Hierarchy
-------------------------------------
We haven't created these yet but this sketches out the typical plan. The layout 
of folders and files is based on the [UNIX filesystem hierarchy standard][1]. 
By following a standard format it makes it easier to match the development 
layout to the final runtime layout, which typically makes scripting a little 
more straightforward.

The skeletal structure will live in a top-level folder called 'files'.

* bin - Command binaries that need to be available in single user mode; for all users, e.g., cat, ls, cp.
* etc - Host-specific system-wide configuration files
* lib - Libraries essential for the binaries in bin/
* libexec - Binaries run by other programs
* src - Source code
* share - Architecture-independent (shared) data.

[1]: http://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html 
