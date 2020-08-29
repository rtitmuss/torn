#!/bin/sh

mkdir -p release
mkdir -p doc/release

for DIR in torn_left torn_right plates/torn_plate plates/torn_base ; do
    mkdir -p $DIR/release

    if [[ $DIR == plates/torn_plate ]]; then
        OPTS='-s all'
    fi

    ~/.local/bin/kicad-exports -c scripts/kiplot.yml -e $DIR/*.sch -d $DIR/release $OPTS

    mv $DIR/release/doc/* doc/release
done

zip -r --junk-paths release/torn_left-gerber.zip torn_left/release/gerber
zip -r --junk-paths release/torn_right-gerber.zip torn_right/release/gerber
zip -r --junk-paths release/torn_plate-gerber.zip plates/torn_plate/release/gerber
zip -r --junk-paths release/torn_base-gerber.zip plates/torn_base/release/gerber
