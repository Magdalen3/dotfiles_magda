#!/bin/bash
cd $HOME/veadotube-mini-linux-x64/
obs-gamecapture ./veadotube-mini &
flatpak run com.obsproject.Studio &
