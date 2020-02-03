#!/bin/bash
pathToStenciles="/mnt/c/Media/stencils/Azure-Stencils"
pathToPNG="/mnt/c/Media/github/AzurePNGStencils"
cd $pathToStenciles
find . -type f -iname '*.svg' ! -iname "*\'*" | sed 's/\.svg$//1'| xargs -I fileName inkscape -z -e fileName".png" fileName".svg" -w 50 -h 50
find . -iname '*.png' -exec cp --parents {} $pathToPNG \;