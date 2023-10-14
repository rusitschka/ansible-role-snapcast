FROM debian:bookworm

RUN set -eux \
  ; apt-get update -yqq \
  ; DEBIAN_FRONTEND=noninteractive apt-get install -yqq --no-install-recommends \
    alsa-utils \
    avahi-daemon \
    build-essential \
    ca-certificates \
    cmake \
    debhelper \
    fakeroot \
    git \
    libasound2-dev \
    libavahi-client-dev \
    libboost-all-dev \
    libexpat1-dev \
    libflac-dev \
    libopus-dev \
    libpulse-dev \
    libsoxr-dev \
    libvorbis-dev \
    libvorbisidec-dev \
    python3 \
  ; git clone https://github.com/badaix/snapcast.git \
  ; cd snapcast \
#  ; mkdir build \
#  ; cd build \
#   ; cmake .. \
#     -DBOOST_ROOT=/usr/include/boost \
#     -DBUILD_CLIENT=ON \
#     -DBUILD_SERVER=OFF \
#   ; cmake --build . \
#  ; cd .. \
  ; ln -s extras/package/debian debian \
  ; debian/changelog_md2deb.py changelog.md  > debian/changelog \
  ; fakeroot make -f debian/rules CMAKEFLAGS="-DBOOST_ROOT=/usr/include/boost -DCMAKE_BUILD_TYPE:STRING=Release -DBUILD_WITH_PULSE=OFF" binary
