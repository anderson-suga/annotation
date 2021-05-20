#!/bin/bash

PYTHON_VERSION="3.9.5"

echo -e "Setting Environment Variables"
export CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(xcrun --show-sdk-path)/usr/lib -L/usr/local/opt/zlib/lib/lib -L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include/include -I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

echo "Done!"
echo
echo "Installing Python ${PYTHON_VERSION}"

export PYTHON_CONFIGURE_OPTS="--enable-framework --with-tcltk-includes='-I/usr/local/opt/tcl-tk/include' --with-tcltk-libs='-L/usr/local/opt/tcl-tk/lib -ltcl8.6 -ltk8.6'"

pyenv install "$PYTHON_VERSION"

echo "Done!"
exit 0
