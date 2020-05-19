#!/bin/bash
#Description: A script to move cinnamox_theme files to appropriate git directories to be pushed for release.
if [ ! -t 1 ]; then
    exit
fi
echo "";
read -rp "Press enter to start the script.";
SPICEDIR="$HOME/Github/other_projects/cinnamon-spices-themes";
MYDIR="$HOME/Github/my_projects/cinnamox_themes";
SOURCEDIR="$HOME/.themes";
THEMES=("Cinnamox-Aubergine" "Cinnamox-Gold-Spice" "Cinnamox-Heather" "Cinnamox-Kashmir-Blue" "Cinnamox-Rhino" "Cinnamox-Rosso-Cursa" "Cinnamox-Willow-Grove");
for THEMENAME in "${THEMES[@]}"
do
    echo "Copying $SOURCEDIR/$THEMENAME to $MYDIR/$THEMENAME";
    rsync -a --exclude 'metadata.json' "$SOURCEDIR/$THEMENAME"/ "$MYDIR/$THEMENAME";
    echo "Copying $SOURCEDIR/$THEMENAME to $SPICEDIR/$THEMENAME/files/$THEMENAME";
    rsync -a --exclude 'metadata.json' "$SOURCEDIR/$THEMENAME"/ "$SPICEDIR/$THEMENAME/files/$THEMENAME";
    echo "Copying info.json, LICENSE and README.md from $SOURCEDIR/$THEMENAME to $SPICEDIR/$THEMENAME";
    rsync -a  --include 'info.json' --include 'README.md' --include 'LICENSE' --exclude '*' "$SOURCEDIR/$THEMENAME"/ "$SPICEDIR/$THEMENAME";
    echo "Copying Cinnamon thumbnail.png to $SPICEDIR/$THEMENAME";
    cp "$SOURCEDIR/$THEMENAME/cinnamon/thumbnail.png" "$SPICEDIR/$THEMENAME/screenshot.png" 
done
echo "";
read -rp "Press enter to exit the script.";
exit

