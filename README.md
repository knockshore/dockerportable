# dockerportable
A portable docker VM using QEMU for Windows. No admin privileges and no installations

dockerportable

Thank you @riafeed from Qiita. A good read about preparing portable docker toolkit for Windows: https://qiita.com/riafeed/items/c7729dc84191e93f0f3d

NOTE: If you're PC has port 22 already open. Change the SSH port in the boot.bat

boot.bat - Starts the alpine linux VM with docker installed inside

connect.bat - Connects to the docker host VM using ssh command (ssh comes installed in latest Windows 10)

installalpine.bat - Mounts the alpine install file (not included)

linux.qcow2 - Virtual disk for the docker host

setenv.bat - Adds the QEMU folder in PATH

startenv.bat - Open a command line with QEMU set in PATH
