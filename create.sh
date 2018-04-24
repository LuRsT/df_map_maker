#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail


ELW=$(ls | grep elw)
EL=$(ls | grep el.bmp)
VEG=$(ls | grep veg)
VOL=$(ls | grep vol)
TMP=$(ls | grep tmp)
BM=$(ls | grep bm.bmp)

gimp -d -f -i -b "(create-save \"$ELW\" \"$EL\" \"$VEG\" \"$VOL\" \"$TMP\" \"$BM\" \"TREES.bmp\" \"DIRT.bmp\" \"MOUNTAINS.bmp\" \"map.bmp\")"
