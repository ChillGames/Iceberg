#-------------------------------------------------------------------------------
# Quick-reference targets for developers - deliberately the first in the file
#-------------------------------------------------------------------------------

# The list command only has one pre-requisite, which is the 
# make command itself (and bash + minimal shell commands).
# See the Trello board for additional documentation.
.PHONEY: list
topic?=targets
PAGER?=/usr/bin/less
list:
	$(PAGER) dev-docs/$(topic).md

#-------------------------------------------------------------------------------
# Common targets expected by developers: all, clean, check, install ...
#-------------------------------------------------------------------------------

# .PHONEY: all
# topic:=targets
# all: list

#-------------------------------------------------------------------------------
# SDK related targets
#-------------------------------------------------------------------------------
# Essential:
#	git, make, python3 (3.5+)
# Useful (not included)
# 	A plain text editor e.g. Sublime text
#	A markdown editor e.g. Typora, Markright
# Useful but hard work to include right now:
#	docker

ifeq ($(uname),Linux)
sdk-target = sdk-linux
else
sdk-target = sdk-darwin
endif

.PHONEY: sdk
sdk: $(sdk-target)

.PHONEY: sdk-linux
sdk-linux:
	# Install SDK for Linux TBD, requires sudo and make to be installed
	sudo -H apt-get update && apt-get install
	sudo -H apt-get install -y python3 docker.io git
	git clone https://github.com/ChillGames/Iceberg.git

.PHONEY: check-sdk-linux
check-sdk-linux:
	docker run -it --rm -v `pwd`:/tmp/Iceberg:ro ubuntu bash /tmp/Iceberg/scripts/check-sdk-linux.bash 

.PHONEY: sdk-darwin
sdk-darwin:
	# Install SDK for Darwin TDB
	sudo -H apt-get install python3
	echo "PLEASE INSTALL DOCKER SEPARATELY."

