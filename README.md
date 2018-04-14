    brew tap duvrai/duvrai
    brew install duvrai/duvrai/aom --HEAD
    brew install duvrai/duvrai/ffmpeg --with-aom --HEAD

    ffmpeg -i in.mkv -c:v libaom-av1 out.mkv
