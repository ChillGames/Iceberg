Folder Hierarchy Structure
==========================

All the assets are contained in a single folder, which is given the logical
name $ICEBERG_HOME. This environment variable is not required at runtime and
is mainly a convenience for documentation and is not actually required for 
any scripts. However, if you would like to set it up, just add to your 
~/.bash_profile (or ~/.bashrc).

	source <PATH TO $ICEBERG_HOME>/scripts/dev-setup.bash

Top Level, $ICEBERG_HOME
------------------------
* LICENSE - the GPL license for our work
* Makefile - one-stop shop for project management via the command-line 


Subfolders
----------
* devdocs - Documentation that is only useful for the developers and is not distributed as part of the installation.


