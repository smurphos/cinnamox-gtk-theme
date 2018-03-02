#!/bin/bash
#Description: Helper script to build the Cinnamox themes GTK elements.
function aubergine {
	THEMENAME="Cinnamox-Aubergine"; build_theme;
}
function goldspice {
	THEMENAME="Cinnamox-Gold-Spice"; build_theme;
}
function heather {
	THEMENAME="Cinnamox-Heather"; build_theme;
}
function kashmirblue {
	THEMENAME="Cinnamox-Kashmir-Blue"; build_theme;
}
function rhino {
	THEMENAME="Cinnamox-Rhino"; build_theme;
}
function rossocursa {
	THEMENAME="Cinnamox-Rosso-Cursa"; build_theme;
}
function willowgrove {
	THEMENAME="Cinnamox-Willow-Grove"; build_theme;
}
function zanah {
	THEMENAME="Cinnamox-Zanah"; build_theme;
}
function test_themes {
	THEMENAME="clearlooks"; build_theme; THEMENAME="monovedek"; build_theme; THEMENAME="monovedek_lcars"; build_theme; THEMENAME="random"; build_theme;
}
function build_theme {
    WORKDIR="$PWD";
    BUILDDIR="$WORKDIR/cinnamox_builds";
    THEMEDIR="$HOME/.themes";
    if [ ! -d "$BUILDDIR" ]; then
		mkdir "$BUILDDIR";
	fi
	if [ ! -d "$THEMEDIR" ]; then
		mkdir "$THEMEDIR";
	fi
    ./change_color.sh -t "$BUILDDIR" -o "$THEMENAME" -m all -d false "$PWD/test/colors/$THEMENAME";
    echo "moving cinnamox theme elements for $THEMENAME to $THEMEDIR";
    cd "$THEMEDIR/$THEMENAME/gtk-3.0" && rm -r "$PWD/assets";
    cd "$THEMEDIR/$THEMENAME/gtk-3.20" && rm -r "$PWD/assets";
    rsync -a -u --exclude 'Makefile' --exclude '*.sh' --exclude 'thumbnail.png' --exclude 'thumbnail.svg' --exclude 'sass' --exclude 'openbox-3' --exclude 'unity' --exclude 'xfwm4' "$BUILDDIR/$THEMENAME"/ "$THEMEDIR/$THEMENAME";
    cd "$THEMEDIR/$THEMENAME/gtk-3.0";
    rm "$PWD/gtk-dark.css"; rm "$PWD/gtk.gresource"; rm "$PWD/gtk.gresource.xml"; rm "$PWD/dist/gtk-dark.css";
    rsync -a "$THEMEDIR/$THEMENAME/gtk-3.0/dist"/ "$THEMEDIR/$THEMENAME/gtk-3.0" && rm -r "$PWD/dist";
    cd "$THEMEDIR/$THEMENAME/gtk-3.20";
    rm "$PWD/gtk-dark.css"; rm "$PWD/gtk.gresource"; rm "$PWD/gtk.gresource.xml"; rm "$PWD/dist/gtk-dark.css";
    rsync -a "$THEMEDIR/$THEMENAME/gtk-3.20/dist"/ "$THEMEDIR/$THEMENAME/gtk-3.20" && rm -r "$PWD/dist";
    cd "$WORKDIR";
}

VARIANT=("Build all" "Aubergine" "Gold-Spice" "Heather" "Kashmir-Blue" "Rhino" "Rosso-Cursa" "Willow-Grove" "Zanah" "Test Themes");
echo "";
echo "*** Cinnamox GTK & Metacity Theme Builder ***";
echo "";
echo "Pleases select a variant or select 1 to build all:";
echo "";
select CHOICE in "${VARIANT[@]}";
do
    case $CHOICE in 
    "Build all")
		aubergine; goldspice; heather; kashmirblue; rhino; rossocursa; willowgrove; zanah; test_themes;; 
    "Aubergine")
		aubergine;;
    "Gold-Spice")
		goldspice;;
    "Heather")
		heather;;
    "Kashmir-Blue")
		kashmirblue;;
    "Rhino")
		rhino;;
    "Rosso-Cursa")
		rossocursa;;
    "Willow-Grove")
		willowgrove;;
    "Zanah")
		zanah;;
    "Test Themes")
        test_themes;;  
    *) echo "Invalid option. Try another one."; continue;;
    esac
    break
done
echo "";
read -p "Press enter to exit the script.";
cd;
exit;
