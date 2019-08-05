#!/bin/bash
#Description: Helper script to build the Cinnamox themes GTK elements.
if [ ! -t 1 ]; then
    exit
fi
function aubergine {
	LIGHTBG="#671559"; DARKBG="#3e0d35";
	LOWTRANSLIGHTBG="rgba(103, 21, 89, 0.8)"; MODTRANSLIGHTBG="rgba(103, 21, 89, 0.6)"; HIGHTRANSLIGHTBG="rgba(103, 21, 89, 0.4)";
	LOWTRANSDARKBG="rgba(62, 13, 53, 0.8)"; MODTRANSDARKBG="rgba(62, 13, 53, 0.6)"; HIGHTRANSDARKBG="rgba(62, 13, 53, 0.4)";
	THEMENAME="Cinnamox-Aubergine"; COLORDESC="a deep purple colour scheme and light text"; THEMESHORT="Aubergine";
	build_theme;
}
function goldspice {
	LIGHTBG="#834122"; DARKBG="#4f2714";
	LOWTRANSLIGHTBG="rgba(131, 65, 34, 0.8)"; MODTRANSLIGHTBG="rgba(131, 65, 34, 0.6)"; HIGHTRANSLIGHTBG="rgba(131, 65, 34, 0.4)";
	LOWTRANSDARKBG="rgba(79, 39, 20, 0.8)"; MODTRANSDARKBG="rgba(79, 39, 20, 0.6)"; HIGHTRANSDARKBG="rgba(79, 39, 20, 0.4)";
	THEMENAME="Cinnamox-Gold-Spice"; COLORDESC="a brown and golden orange colour scheme and light text"; THEMESHORT="Gold-Spice";
	build_theme;
}
function heather {
	LIGHTBG="#cddbe4"; DARKBG="#5d89a8";
	LOWTRANSLIGHTBG="rgba(205, 219, 228, 0.8)"; MODTRANSLIGHTBG="rgba(205, 219, 228, 0.6)"; HIGHTRANSLIGHTBG="rgba(205, 219, 228, 0.4)";
	LOWTRANSDARKBG="rgba(93, 137, 168, 0.8)"; MODTRANSDARKBG="rgba(93, 137, 168, 0.6)"; HIGHTRANSDARKBG="rgba(93, 137, 168, 0.4)";
	THEMENAME="Cinnamox-Heather"; COLORDESC="a pale blue colour scheme and dark text"; THEMESHORT="Heather";
	build_theme;
}
function kashmirblue {
	LIGHTBG="#506a77"; DARKBG="#304047";
	LOWTRANSLIGHTBG="rgba(80, 106, 119, 0.8)"; MODTRANSLIGHTBG="rgba(80, 106, 119, 0.6)"; HIGHTRANSLIGHTBG="rgba(80, 106, 119, 0.4)";
	LOWTRANSDARKBG="rgba(48, 64, 71, 0.8)"; MODTRANSDARKBG="rgba(48, 64, 71, 0.6)"; HIGHTRANSDARKBG="rgba(48, 64, 71, 0.4)";
	THEMENAME="Cinnamox-Kashmir-Blue"; COLORDESC="a soothing blue colour scheme and light text"; THEMESHORT="Kashmir-Blue";
	build_theme;
}
function rhino {
	LIGHTBG="#3c4650"; DARKBG="#242a30";
	LOWTRANSLIGHTBG="rgba(60, 70, 80, 0.8)"; MODTRANSLIGHTBG="rgba(60, 70, 80, 0.6)"; HIGHTRANSLIGHTBG="rgba(60, 70, 80, 0.4)";
	LOWTRANSDARKBG="rgba(36, 42, 48, 0.8)"; MODTRANSDARKBG="rgba(36, 42, 48, 0.6)"; HIGHTRANSDARKBG="rgba(36, 42, 48, 0.4)";
	THEMENAME="Cinnamox-Rhino"; COLORDESC="a deep grey colour scheme and light text"; THEMESHORT="Rhino";
	build_theme;
}
function rossocursa {
	LIGHTBG="#af0000"; DARKBG="#690000";
	LOWTRANSLIGHTBG="rgba(175, 0, 0, 0.8)"; MODTRANSLIGHTBG="rgba(175, 0, 0, 0.6)"; HIGHTRANSLIGHTBG="rgba(175, 0, 0, 0.4)";
	LOWTRANSDARKBG="rgba(105, 0, 0, 0.8)"; MODTRANSDARKBG="rgba(105, 0, 0, 0.6)"; HIGHTRANSDARKBG="rgba(105, 0, 0, 0.4)";
	THEMENAME="Cinnamox-Rosso-Cursa"; COLORDESC="an exciting red colour scheme and light text"; THEMESHORT="Rosso-Cursa";
	build_theme;
}
function willowgrove {
	LIGHTBG="#718062"; DARKBG="#444d3b";
	LOWTRANSLIGHTBG="rgba(113, 128, 98, 0.8)"; MODTRANSLIGHTBG="rgba(113, 128, 98, 0.6)"; HIGHTRANSLIGHTBG="rgba(113, 128, 98, 0.4)";
	LOWTRANSDARKBG="rgba(68, 77, 59, 0.8)"; MODTRANSDARKBG="rgba(68, 77, 59, 0.6)"; HIGHTRANSDARKBG="rgba(68, 77, 59, 0.4)";
	THEMENAME="Cinnamox-Willow-Grove"; COLORDESC="a soothing green colour scheme and light text"; THEMESHORT="Willow-Grove";
	build_theme;
}
function build_theme {
	DESCRIPTION="$THEMENAME features $COLORDESC. Cinnamon, Metacity, GTK2, GTK3.18 and GTK3.20+ themes are included along with several interactive bash scripts to allow end-users to tweak theme characteristics.";
	CURRENTDIR="$PWD";
	cd ..;
    WORKDIR="$PWD";
    BUILDDIR="$WORKDIR/cinnamox_builds";
    THEMEDIR="$HOME/.themes";
    QTDIR="$HOME/.config/qt5ct/colors";
    QTTHEMEDIR="$HOME/.themes/$THEMENAME/qt5ct";
    if [ ! -d "$BUILDDIR" ]; then
		mkdir "$BUILDDIR";
	fi
	if [ ! -d "$THEMEDIR" ]; then
		mkdir "$THEMEDIR";
	fi
	if [ ! -d "$QTTHEMEDIR" ]; then
		mkdir "$QTTHEMEDIR";
	fi
    ./change_color.sh -t "$BUILDDIR" -o "$THEMENAME" -m all -d false "$PWD/colors/cinnamox/$THEMENAME";
    cp "$WORKDIR/cinnamox_specific/cinnamox_transparency.sh" "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_transparency.sh";
    cp "$WORKDIR/cinnamox_specific/cinnamox_toggle_cinnamon.sh" "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_toggle_cinnamon.sh";
    cp "$WORKDIR/cinnamox_specific/cinnamox_fontsize.sh" "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_fontsize.sh";
    cp "$WORKDIR/cinnamox_specific/info.json" "$BUILDDIR/$THEMENAME/info.json";
    cp "$WORKDIR/cinnamox_specific/LICENSE" "$BUILDDIR/$THEMENAME/LICENSE";
    cp "$WORKDIR/cinnamox_specific/README.md" "$BUILDDIR/$THEMENAME/README.md";
    cd "$BUILDDIR/$THEMENAME/cinnamon";
	sed -i "s|#LIGHTBG|$LIGHTBG|g" cinnamox_transparency.sh;
	sed -i "s|#LOWTRANSLIGHTBG|$LOWTRANSLIGHTBG|g" cinnamox_transparency.sh;
	sed -i "s|#MODTRANSLIGHTBG|$MODTRANSLIGHTBG|g" cinnamox_transparency.sh;
	sed -i "s|#HIGHTRANSLIGHTBG|$HIGHTRANSLIGHTBG|g" cinnamox_transparency.sh;
	sed -i "s|#DARKBG|$DARKBG|g" cinnamox_transparency.sh;
	sed -i "s|#LOWTRANSDARKBG|$LOWTRANSDARKBG|g" cinnamox_transparency.sh;
	sed -i "s|#MODTRANSDARKBG|$MODTRANSDARKBG|g" cinnamox_transparency.sh;
	sed -i "s|#HIGHTRANSDARKBG|$HIGHTRANSDARKBG|g" cinnamox_transparency.sh;
	sed -i "s|#THEMENAME|$THEMENAME|g" cinnamox_transparency.sh;
	sed -i "s|#THEMENAME|$THEMENAME|g" cinnamox_fontsize.sh;
	sed -i "s|#THEMENAME|$THEMENAME|g" cinnamox_toggle_cinnamon.sh;
	sed -i "s|#THEMENAME|$THEMENAME|g" cinnamon.css;
	sed -i "s|#VARIANT|Transparency: None|g" cinnamon.css;
	sed -i "s|#FONTSIZE|Standard font size (10pt)|g" cinnamon.css;
	sed -i "s|#THEMEDESCRIPTION|$DESCRIPTION|g" cinnamon.css;
	sed -i "s|#THEMENAME|$THEMENAME|g" cinnamon_old.css;
	sed -i "s|#VARIANT|Transparency: None|g" cinnamon_old.css;
	sed -i "s|#FONTSIZE|Standard font size (10pt)|g" cinnamon_old.css;
	sed -i "s|#THEMEDESCRIPTION|$DESCRIPTION|g" cinnamon_old.css;	
	cd "$BUILDDIR/$THEMENAME";
	sed -i "s|#THEMENAME|$THEMENAME|g" info.json;
	sed -i "s|#THEMEDESCRIPTION|$DESCRIPTION|g" info.json;
	sed -i "s|#THEMENAME|$THEMENAME|g" README.md;
	sed -i "s|#THEMEDESCRIPTION|$DESCRIPTION|g" README.md;
	sed -i "s|#THEMESHORT|$THEMESHORT|g" README.md;
	cd "$CURRENTDIR";
	echo "Moving from $BUILDDIR to $THEMEDIR";
    cd "$THEMEDIR/$THEMENAME/gtk-3.0" && rm -r "$PWD/assets";
    cd "$THEMEDIR/$THEMENAME/gtk-3.20" && rm -r "$PWD/assets";
    cd "$THEMEDIR/$THEMENAME/cinnamon" && rm -r "$PWD/assets";
    rsync -a -u --exclude 'all-assets.*' --exclude 'Makefile' --exclude '*.sh' --exclude 'thumbnail.png' --exclude 'thumbnail.svg' --exclude 'scss' --exclude 'openbox-3' --exclude 'unity' --exclude 'xfwm4' "$BUILDDIR/$THEMENAME"/ "$THEMEDIR/$THEMENAME";
    cp "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_transparency.sh" "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_transparency.sh";
    chmod +x "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_transparency.sh"
    cp "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_toggle_cinnamon.sh" "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_toggle_cinnamon.sh";
    chmod +x "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_toggle_cinnamon.sh"
    cp "$BUILDDIR/$THEMENAME/cinnamon/cinnamox_fontsize.sh" "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_fontsize.sh";
    chmod +x "$THEMEDIR/$THEMENAME/cinnamon/cinnamox_fontsize.sh";
    cd "$THEMEDIR/$THEMENAME/gtk-3.0";
    rm "$PWD/gtk-dark.css"; rm "$PWD/gtk.gresource"; rm "$PWD/gtk.gresource.xml"; rm "$PWD/dist/gtk-dark.css";
    rsync -a "$THEMEDIR/$THEMENAME/gtk-3.0/dist"/ "$THEMEDIR/$THEMENAME/gtk-3.0" && rm -r "$PWD/dist";
    cd "$THEMEDIR/$THEMENAME/gtk-3.20";
    rm "$PWD/gtk-dark.css"; rm "$PWD/gtk.gresource"; rm "$PWD/gtk.gresource.xml"; rm "$PWD/dist/gtk-dark.css";
    rsync -a "$THEMEDIR/$THEMENAME/gtk-3.20/dist"/ "$THEMEDIR/$THEMENAME/gtk-3.20" && rm -r "$PWD/dist";
    cp "$QTDIR/$THEMENAME.conf" "$QTTHEMEDIR/$THEMENAME.conf";
    cp "$WORKDIR/cinnamox_specific/cinnamox_enable_qt5ct.sh" "$QTTHEMEDIR/cinnamox_enable_qt5ct.sh";
    chmod +x "$QTTHEMEDIR/cinnamox_enable_qt5ct.sh"
    cd "$QTTHEMEDIR";
    sed -i "s|#THEMENAME|$THEMENAME|g" cinnamox_enable_qt5ct.sh;
    cp "$WORKDIR/cinnamox_specific/cinnamox_toggle_GTK2_HIDPI.sh" "$THEMEDIR/$THEMENAME/gtk-2.0/cinnamox_toggle_GTK2_HIDPI.sh";
    chmod +x "$THEMEDIR/$THEMENAME/gtk-2.0/cinnamox_toggle_GTK2_HIDPI.sh"
    cd "$THEMEDIR/$THEMENAME/gtk-2.0";
    sed -i "s|#THEMENAME|$THEMENAME|g" cinnamox_toggle_GTK2_HIDPI.sh;
    cp "$WORKDIR/cinnamox_specific/cinnamox_firefox_fix.sh" "$THEMEDIR/$THEMENAME/cinnamox_firefox_fix.sh";
    chmod +x "$THEMEDIR/$THEMENAME/cinnamox_firefox_fix.sh"
    cd "$CURRENTDIR"; 
}

VARIANT=("Build all" "Aubergine" "Gold-Spice" "Heather" "Kashmir-Blue" "Rhino" "Rosso-Cursa" "Willow-Grove");
echo "";
echo "*** Cinnamox GTK & Metacity Theme Builder ***";
echo "";
echo "Pleases select a variant or select 1 to build all:";
echo "";
select CHOICE in "${VARIANT[@]}";
do
    case $CHOICE in 
    "Build all")
		aubergine; goldspice; heather; kashmirblue; rhino; rossocursa; willowgrove;; 
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
    *) echo "Invalid option. Try another one."; continue;;
    esac
    break
done
echo "";
read -p "Press enter to exit the script.";
cd;
exit;
