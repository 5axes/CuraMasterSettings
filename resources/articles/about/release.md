# Cura development releases

These releases are built from the Cura 4.13 branch + my own additions/tweaks. They can be installed alongside the UM releases without affecting them.

* The Linux x86_64 AppImages are now being built on a Ubuntu 20.04 system. Fun fact! the AppImages also run on Chromebooks that support Linux apps.

* The Linux armhf and aarch64 AppImages are built on Raspbian GNU/Linux 10 (yes, really!). Known issues are:

  * It supports a simplified version of the full 3d layer display. Due to limitations of the PI 4 graphics hardware, it's somewhat crude compared
   to what you would see on a PC/laptop but it's still better than the compatibility mode.

  But, hey, it runs on a PI 4 and can slice a benchy, what more do you need?

  > ##Important
  > **Make sure your PI 4 has the libgles-dev package installed (sudo apt-get install libgles-dev).**
  >
  > **To get the 3d layer display and the "selected face downwards" feature, you need to download mesa-ARCH-VER.tar.gz and unpack (sudo tar xzf mesa-ARCH-VER.tar.gz) - this will not overwrite any system files.**


* The Windows 64 bit exe is built *very slowly* on a Windows 10 system (hopeless system, you're far better off using Linux instead).

* Due to upstream changes I can no longer build a release for any version of MacOS as the MacBook that I have been using is too old. Sorry about that.

Release file md5sums available on request.

**All are supplied with no warranty, YMMV.**


