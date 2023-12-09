#! /bin/bash

# system utils
dnf install -y \
	vim \
	g++ \
	clang \
	clang-tools-extra \
	cmake \
	cargo \
	python3-pip \
	ffmpeg \
	ImageMagick \
	lz4 \
	rsync \
	mediainfo \
	neofetch \
	SFML-devel \
	yt-dlp \
	lm_sensors \
	qemu \
	v4l2loopback


# applications
dnf install -y \
	dconf-editor \
	corectrl \
	baobab \
	gparted \
	gsmartcontrol \
	timeshift \
	vlc \
	okular \
	rhythmbox


# gnome shell extensions
GSE="gnome-shell-extension"
dnf install --skip-unavailable -y \
	gnome-tweaks gnome-extensions-app \
	papirus-icon-theme \
	"$GSE"-user-theme \
	"$GSE"-appindicator \
	"$GSE"-dash-to-dock \
	"$GSE"-gsconnect \
	"$GSE"-no-overview \
	


# misc applications
dnf install --skip-unavailable -y \
	texlive \
	piper \
	blender \
	kdenlive \
	epiphany \
	chromium \
	gimp \
	easyeffects \
	inkscape \
	virt-manager





