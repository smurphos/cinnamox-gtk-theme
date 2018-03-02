Cinnamox-gtk-theme
=====

Cinnamox-gtk-theme is a fork of the [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) used in the excellent [Oomox](https://github.com/actionless/oomox) app
[Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) is in turn a fork of the [Numix-gtk-theme](https://github.com/numixproject/numix-gtk-theme).

Thank-you to all the upstream developers for their work in making these tools available.

Cinnamox-gtk-theme differs from [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme) only in a few cosmetic tweaks and the inclusion of color files and scripts used to build the Metacity, GTK2, GTK3.18 and GTK3.20 elements of the eight [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes).
Tools for building the cinnamon element of the themes can be found at [Cinnamox_theme_master](https://github.com/smurphos/cinnamox_theme_master).

Cinnamox themes are compatible with Cinnamon 3.2+, GTK3.18 or GTK 3.20+ and require the gtk2-engines-murrine package to be installed.
Current releases of the themes can be downloaded and installed via the Cinnamon Themes application or manually via [Cinnamon Spices](https://cinnamon-spices.linuxmint.com/themes)
 
### Cinnamox-Kashir-Blue Release Screenshot

![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Cinnamox-Kashmir-Blue/screenshot.png "Cinnamox-Kashmir-Blue")

### Cinnamox-Kashir-Blue GTK Tests

![Cinnamox-Kashmir-Blue-GTK2](https://github.com/smurphos/cinnamox-gtk-theme/raw/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk2-awf.png "Cinnamox-Kashmir-Blue-GTK2")
![Cinnamox-Kashmir-Blue-GTK3-1](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page1.png "Cinnamox-Kashmir-Blue-GTK3-1")
![Cinnamox-Kashmir-Blue-GTK3-2](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page2.png "Cinnamox-Kashmir-Blue-GTK3-2")
![Cinnamox-Kashmir-Blue-GTK3-3](https://github.com/smurphos/cinnamox-gtk-theme/blob/master/screenshots/theme-Cinnamox-Kashmir-Blue-gtk3-page3.png "Cinnamox-Kashmir-Blue-GTK3-3")

#### Prerequisites

You need to have those dependencies:
 - `glib-compile-schemas`
 - `gdk-pixbuf-pixdata`
 - `sassc>=3.4`
 - `gtk3>=3.18`
 
For GTK2 you need murrine engine which can be not installed by default.

##### Arch Linux

```
sudo pacman -S --needed bash grep sed bc glib2 gdk-pixbuf2 sassc gtk-engine-murrine gtk-engines librsvg
```

##### Ubuntu

```
sudo apt install libgdk-pixbuf2.0-dev libxml2-utils gtk2-engines-murrine librsvg2-bin
```

And install `sassc>=3.4`: https://askubuntu.com/questions/849057/how-to-install-libsass-on-ubuntu-16-04



#### How to generate the theme using CLI:

```
git clone https://github.com/smurphos/cinnamox-gtk-theme.git
cd cinnamox-gtk-theme
./change_color.sh -o my-test-theme <(echo -e "BG=888a85\nBTN_BG=85509b\nBTN_FG=0e0021\nFG=0e0021\nGRADIENT=0.0\nHDR_BTN_BG=85509b\nHDR_BTN_FG=0e0021\nMENU_BG=0e0021\nMENU_FG=888a85\nROUNDNESS=4\nSEL_BG=dc5e86\nSEL_FG=000000\nSPACING=3\nTXT_BG=c0bbbb\nTXT_FG=000000\nWM_BORDER_FOCUS=9edc60\nWM_BORDER_UNFOCUS=0e0021\n")
```
Alternatively

```./cinnamox_gtk_picker.sh```

will launch an interactive script to build the Cinnamox Themes.

### Using with tiling WMs:

To resolve borders/shadow problem in tiling window managers create/append to 
`~/.config/gtk-3.0/gtk.css`:

```css
.window-frame, .window-frame:backdrop {
  box-shadow: 0 0 0 black;
  border-style: none;
  margin: 0;
  border-radius: 0;
}
.titlebar {
  border-radius: 0;
}
window decoration {
	margin: 0;
    border: 0;
}

```

### Hacking


#### Running tests locally:

```sh
cd ./docker_scripts/
# prepare container:
./build_docker_image.sh ; ./start_docker_container.sh
# run tests:
./run_docker_tests.sh
```

#### Generate new screenshots:

```sh
./docker_scripts/run_docker_tests.sh -e GENERATE_ASSETS=1
```

#### Generate screenshots only for specific theme variant:

```sh
./docker_scripts/run_docker_tests.sh -e GENERATE_ASSETS=1 -e SKIP_GTK2=1 -e TEST_THEMES=clearlooks -e TESTSUITE_HIDPI=1
```
