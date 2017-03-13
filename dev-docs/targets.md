This is the makefile for the Iceberg project. Valid targets are:

Standard Targets
----------------
Not implemented yet.


Dev Docs
--------
* **make** - with no arguments simply lists the valid targets (via make list topic=targets).
* **make list topic=$topic** - summarises a given topic, where good starter topics are 'targets', 'dev-files', 'install-files' and 'read-me'. The text is read out of the dev-docs folders.

Get Started Targets
-------------------
* **make sdk** - infers the current O/S and attempts to install the project pre-requisites.
* **make sdk-darwin** - installs project pre-reqs for Darwin.
* **make sdk-linux** - installs project pre-reqs for Linux.
