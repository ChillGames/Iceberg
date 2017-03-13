# The target sdk-linux has two pre-requisites: sudo and make.
# It's necessary to update before any 'apt' features will work.
apt update && apt upgrade -y && apt install -y sudo make

# Now create a subproject to work inside.
mkdir ~/projects
cd ~/projects

# Now test that the target 'sdk-linux' actually works.
make -f /tmp/Iceberg/Makefile sdk-linux

# And list the contents of the current directory to the terminal.
echo 'Contents of $(pwd)'
ls -al
