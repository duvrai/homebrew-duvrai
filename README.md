Homebrew packages for the Alliance for Open Media Video 1 codec (AV1) for use with ffmpeg.

# Installing ffmpeg with the AV1 codec (aom) from this tap

    brew tap duvrai/duvrai
    brew install duvrai/duvrai/aom --HEAD
    brew install duvrai/duvrai/ffmpeg --with-aom --HEAD

Other useful Homebrew install options for the `ffmpeg` package: `--with-fdk-aac --with-libsoxr --with-libvidstab --with-openh264 --with-sdl2 --with-tools --with-x265 --with-libvpx --with-opus`

# Encoding video with AV1 codec
Enabling experimental codecs with `-strict experimental`

    ffmpeg -i in.mkv -c:v libaom-av1 -strict experimental out.mkv

# Playing AV1 encoded video with ffplay
ffplay installs itself with ffmpeg using the `--with-sdl2` Homebrew install option.

    ffplay out.mkv
