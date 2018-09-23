#!/bin/bash
#set -x

HDA=IDT76e0_Envy
EXCEPTIONS=
ESSENTIAL=

# include subroutines
DIR=$(dirname ${BASH_SOURCE[0]})
source "$DIR/tools/_install_subs.sh"

warn_about_superuser

# install tools
install_tools

# install required kexts
install_download_kexts
install_brcmpatchram_kexts
remove_deprecated_kexts
install_backlight_kexts

# EHCI is disabled, so no need for FakePCIID_XHCIMux.kext
remove_kext FakePCIID_XHCIMux.kext

# create/install patched AppleHDA files
install_hdainject

# USBXHC_Envy.kext is not used any more (using USBInjectAll.kext instead)
remove_kext USBXHC_Envy.kext

# all kexts are now installed, so rebuild cache
rebuild_kernel_cache

# update kexts on EFI/CLOVER/kexts/Other
update_efi_kexts

# VoodooPS2Daemon is deprecated
remove_voodoops2daemon

#EOF
