#!/bin/sh

# right
#mv pcb_right/gerber/torn_right-Edge_Cuts.gm1 foo
tracespace -L -b.color.sm="rgba(0,0,0,0.75)" --out pcb_right/render pcb_right/gerber/*
#mv foo pcb_right/gerber/torn_right-Edge_Cuts.gm1

mv pcb_right/render/torn_right-.top.svg doc/img/pcb-right-top-v2.svg 
mv pcb_right/render/torn_right-.bottom.svg doc/img/pcb-right-bottom-v2.svg 
rm -r pcb_right/render

# left
mv pcb_left/gerber/torn_left-Edge_Cuts.gm1 foo
tracespace -L -b.color.sm="rgba(0,0,0,0.75)" --out pcb_left/render pcb_left/gerber/*
mv foo pcb_left/gerber/torn_left-Edge_Cuts.gm1

mv pcb_left/render/torn_left-.top.svg doc/img/pcb-left-top-v2.svg
mv pcb_left/render/torn_left-.bottom.svg doc/img/pcb-left-bottom-v2.svg
rm -r pcb_left/render

# plate
mv plates/pcb/gerber/torn-top-plate-Edge_Cuts.gm1 foo
tracespace -L -b.color.sm="rgba(0,0,0,0.75)" --out plates/pcb/render plates/pcb/gerber/*
mv foo plates/pcb/gerber/torn-top-plate-Edge_Cuts.gm1

mv plates/pcb/render/torn-top-plate-.top.svg doc/img/plate-top-v2.svg
mv plates/pcb/render/torn-top-plate-.bottom.svg doc/img/plate-bottom-v2.svg
rm -r plates/pcb/render
