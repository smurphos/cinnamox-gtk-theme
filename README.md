Cinnamox-gtk-theme
=====

### Introduction

This repository provides the templates and scripts used to build the [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes/releases).

It also serves as a command line tool for end-users to make their own personalised theme using the cinnamox theme template.

Cinnamox themes are compatible with Cinnamon 3.2+, GTK3.18 or GTK 3.20+ and require the `gtk2-engines-murrine` or `gtk-engine-murrine` package to be installed.

The current release versions of themes can be downloaded and installed via Cinnamon's Themes module in Cinnamon Settings or manually via [Cinnamon Spices](https://cinnamon-spices.linuxmint.com/themes), [openDesktop.org](https://www.opendesktop.org/member/491875/), or from [this Github repository](https://github.com/smurphos/cinnamox_themes/releases).

### Credits

Cinnamox-gtk-theme is a fork of the [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) used in the excellent [Oomox](https://github.com/actionless/oomox) GUI based theme making app.

[Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) is in turn a fork of the famous [Numix-gtk-theme](https://github.com/numixproject/numix-gtk-theme).

Thank-you to all the upstream developers for their time and effort in making these resources available.

The cinnamon theme includes in Cinnamox-gtk-theme is my work and a version of it has now been merged upstream to [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) and the [Oomox](https://github.com/actionless/oomox) GUI based theme making app now includes the capability to build cinnamon themes.

Cinnamox-gtk-theme differs from [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) only in a few cosmetic tweaks to the theme SCSS code and the inclusion of color files and helper scripts used to build the Metacity, GTK2, GTK3.18 and GTK3.20 elements of the eight [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes/releases).

### Building a personalised theme using this repo.

#### Prerequisites

On order to build themes using the tools in this repository you need to have these dependencies installed:

 - `glib-compile-schemas`
 - `gdk-pixbuf-pixdata`
 - `sassc>=3.4`
 - `gtk3>=3.18`
 
To build the GTK2 elements you need `gtk2-engines-murrine` or `gtk-engine-murrine` which may not be installed by default.

##### Arch Linux

```
sudo pacman -S --needed bash grep sed bc glib2 gdk-pixbuf2 sassc gtk-engine-murrine gtk-engines librsvg
```

##### Ubuntu / Linux Mint

```
sudo apt install libgdk-pixbuf2.0-dev libxml2-utils gtk2-engines-murrine librsvg2-bin
```

`sassc>=3.4` is available in the Ubuntu repos for version 17.10 'artful' and later. Ubuntu 17.10 + and Linux Mint 19 + users can install it using

```
sudo apt install sassc
```

Ubuntu 16.04 and Mint 18.x users can download and install the `libsass0` and `sassc` deb packages appropriate for your architecture from Ubuntu.

The author has successfully installed the bionic versions available from the links below on a Linux Mint 18 AMD64 machine. `libsass0` must be installed first.

[bionic libsass0](https://packages.ubuntu.com/bionic/libsass0)

[bionic sassc](https://packages.ubuntu.com/bionic/sassc)


#### Clone this repo

```
git clone https://github.com/smurphos/cinnamox-gtk-theme.git
cd cinnamox-gtk-theme
```

#### Building the Cinnamox themes

`.cinnamox_specific/cinnamox_gtk_picker.sh` will launch an interactive bash script to build your choice of the Cinnamox themes.

#### Make and build your own theme template

WIP

#### Cinnamox-Kashir-Blue release screenshot

![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Cinnamox-Kashmir-Blue/cinnamon/thumbnail.png "Cinnamox-Kashmir-Blue")

#### Cinnamox-Kashir-Blue GTK test result screenshots

![Cinnamox-Kashmir-Blue-GTK2](https://github.com/smurphos/cinnamox-gtk-theme/raw/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk2-awf.png "Cinnamox-Kashmir-Blue-GTK2")
![Cinnamox-Kashmir-Blue-GTK3-1](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page1.png "Cinnamox-Kashmir-Blue-GTK3-1")
![Cinnamox-Kashmir-Blue-GTK3-2](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page2.png "Cinnamox-Kashmir-Blue-GTK3-2")
![Cinnamox-Kashmir-Blue-GTK3-3](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page3.png "Cinnamox-Kashmir-Blue-GTK3-3")
