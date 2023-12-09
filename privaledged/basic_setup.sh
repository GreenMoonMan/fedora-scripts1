#! /bin/bash


# --------------------------------------------------------------------------------
# basic setup

# update system
dnf update -y

# set up rpm fusion
# free repo
dnf install -y \
	https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
# non-free
dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# appstream
dnf -y group update core


# media codecs
dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install -y lame\* --exclude=lame-devel
dnf group upgrade -y --with-optional Multimedia

# hardware decoding for amd gpus
dnf -y swap mesa-va-drivers mesa-va-drivers-freeworld
dnf -y swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

# utilities for encoding/decoding
dnf install -y libva-utils

# --------------------------------------------------------------------------------

# configure flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete fedora

