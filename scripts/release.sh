#!/bin/sh

mkdir -p release
mkdir -p doc/release

for DIR in torn_left torn_right case/PCB\ Case/plate case/PCB\ Case/base ; do
    mkdir -p $DIR/release

    if [[ $DIR == case/PCB\ Case/plate ]]; then
        OPTS='-s all'
    fi

    ~/.local/bin/kicad-exports -c scripts/kiplot.yml -e $DIR/*.sch -d $DIR/release $OPTS

    mv $DIR/release/doc/* doc/release
done

zip -r --junk-paths release/torn_left-gerber.zip torn_left/release/gerber
zip -r --junk-paths release/torn_right-gerber.zip torn_right/release/gerber
zip -r --junk-paths release/torn_plate-gerber.zip case/PCB\ Case/plate/release/gerber
zip -r --junk-paths release/torn_base-gerber.zip case/PCB\ Case/base/release/gerber
