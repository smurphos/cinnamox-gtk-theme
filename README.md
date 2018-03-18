Cinnamox-gtk-theme
=====

### Introduction

This repository provides the templates and scripts used to build the [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes/releases).

It also serves as a command line tool for end-users to make their own personalised theme.

Cinnamox themes include a Cinnamon, GTK2, GTK3, GTK3.20 and Metacity Theme, are compatible with Cinnamon 3.2+, GTK3.18 or GTK 3.20+ and require the `gtk2-engines-murrine` or `gtk-engine-murrine` package to be installed.

The current release versions of the themes can be downloaded and installed via Cinnamon's Themes module in Cinnamon Settings or manually via [Cinnamon Spices](https://cinnamon-spices.linuxmint.com/themes), [openDesktop.org](https://www.opendesktop.org/member/491875/), or from [this Github repository](https://github.com/smurphos/cinnamox_themes/releases).

### Credits

Cinnamox-gtk-theme is a fork of [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) used in the excellent [Oomox](https://github.com/actionless/oomox) GUI theme making app.

[Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) is in turn a fork of the famous [Numix-gtk-theme](https://github.com/numixproject/numix-gtk-theme).

Thank-you to all the upstream developers for their time and effort in making these resources available.

The cinnamon theme includes in Cinnamox-gtk-theme is authored by me. A version has now been merged upstream to [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) and the [Oomox](https://github.com/actionless/oomox) app version 1.60+ has the option to build a cinnamon theme.

Cinnamox-gtk-theme has some cinnamox specific changes applied to the theme code so will produce a slightly different output to [Oomox](https://github.com/actionless/oomox). Having said that improvements to either theme are often merged upstream / downstream.

Cinnamon-gtk-theme also includes the theme definitions and helper scripts used to build the [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes/releases). Please note that the theme definitions in Cinnamox-gtk-theme are not compatible with [Oomox](https://github.com/actionless/oomox)

### Instructions

#### Prerequisites

On order to build themes using the tools in this repository you need to have these dependencies installed:

 - `glib-compile-schemas`
 - `gdk-pixbuf-pixdata`
 - `sassc>=3.4`
 - `libsassc>=3.4`
 - `gtk3>=3.18`
 
To build the GTK2 elements you need `gtk2-engines-murrine` or `gtk-engine-murrine`

##### Arch Linux

Enter this command in a termimal to install the dependencies in an Arch based distro.
```
sudo pacman -S --needed bash grep sed bc glib2 gdk-pixbuf2 sassc gtk-engine-murrine gtk-engines librsvg
```

##### Ubuntu / Linux Mint

Enter this command in a termimal to install the dependencies in an Ubuntu based distro.
```
sudo apt install libgdk-pixbuf2.0-dev libxml2-utils gtk2-engines-murrine librsvg2-bin
```

`sassc>=3.4` & `libsass0>=3.4` are available in the Ubuntu repos for version 17.10 'artful' and later. Ubuntu 17.10+ and Linux Mint 19+  enter this command into a terminal to install.
```
sudo apt install sassc libsass0
```

Ubuntu 16.04 and Mint 18.x users can download the required `libsass0` and `sassc` deb packages appropriate for their architecture from the Ubuntu website. I have successfully installed the bionic versions available from the links below on a Linux Mint 18 AMD64 machine. `libsass0` should be installed first. Please disregard any warning about the `libsass0` version being newer than the xenial repo version.

[bionic libsass0](https://packages.ubuntu.com/bionic/libsass0)

[bionic sassc](https://packages.ubuntu.com/bionic/sassc)


#### Clone this repo

Once the dependencies are installed clone the repo. The command below will clone the repo to the home folder. The remaining instructions assume you have used this location
```
cd
git clone https://github.com/smurphos/cinnamox-gtk-theme.git
cd cinnamox-gtk-theme
```

#### Make and build your own theme

1. Open `~/cinnamox-gtk-theme/colors/theme_template` in your preferred text editor. I recommend [Geany](https://www.geany.org/) as it includes a built in color wheel / picker utility which can assist in choosing colors.

2. Theme colors values are listed in this file in HEX format without the preceeding `#`. E.g. the HEX for `green`, `#008000`, would be entered as `008000`

3. Edit the theme colors as preferred. Please ensure the variable names are not changed and ensure not to include the # in the color values

4. Edit the other theme characteristics (name, roundness, gradient etc) taking note of the required or recommended range of values

5. Save the file into the colors directory with a new name - e.g `~/cinnamox-gtk-theme/colors/excellent-theme`

6. Open a terminal window and input this command `~/cinnamox-gtk-theme/change_color.sh ~/cinnamox-gtk-theme/colors/excellent-theme`

7. To ensure the theme applies to gui apps opened as root input this command `sudo ln -s ~/.themes/* /usr/share/themes/`

8. Apply the theme using the Cinnamon Themes module in Cinnamon Settings to set your Windows Border theme, Controls theme, and Desktop theme to cinnamox-excellent-theme

#### Building the Cinnamox themes

`~/cinnamox-gtk-theme/cinnamox_specific/cinnamox_gtk_picker.sh` will launch an interactive bash script allowing you to build your choice of the Cinnamox themes.


### Screenshots

#### Cinnamox-Kashir-Blue release screenshot

![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Cinnamox-Kashmir-Blue/cinnamon/thumbnail.png "Cinnamox-Kashmir-Blue")

#### Cinnamox-Kashir-Blue GTK test result screenshots

![Cinnamox-Kashmir-Blue-GTK2](https://github.com/smurphos/cinnamox-gtk-theme/raw/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk2-awf.png "Cinnamox-Kashmir-Blue-GTK2")
![Cinnamox-Kashmir-Blue-GTK3-1](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page1.png "Cinnamox-Kashmir-Blue-GTK3-1")
![Cinnamox-Kashmir-Blue-GTK3-2](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page2.png "Cinnamox-Kashmir-Blue-GTK3-2")
![Cinnamox-Kashmir-Blue-GTK3-3](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page3.png "Cinnamox-Kashmir-Blue-GTK3-3")
