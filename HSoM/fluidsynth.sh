sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install a2jmidid -y
dnf install alsa-plugins-pulseaudio
dnf install gmp-devel
dnf install fluidsynth
dnf install ffmpeg ffmpeg-devel --allowerasing

# To run the server
fluidsynth -a pulseaudio -m alsa_seq -o midi.autoconnect=1 \
  -g 1.0 /usr/share/soundfonts/FluidR3_GM.sf2
