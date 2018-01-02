#!/bin/bash
#export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/conda/lib:$LD_LIBRARY_PATH
set -e

# To enable headless Firefox, have it run in virtual framebuffer.
# See http://www.semicomplete.com/blog/geekery/xvfb-firefox.html.
#
# Use the RESOLUTION environmental variable to customize screen size & depth. Default is "1024x768x24".
#

if [ -n "${RESOLUTION}" ]; then
    OPTS="-screen 0 ${RESOLUTION}"
fi

Xvfb :1 ${OPTS} &
export DISPLAY=:1

# So Firefox driver can find Firefox
export PATH=/firefox:$PATH

case "$1" in
  "")
    bash
    ;;
  jupyter)
    jupyter notebook --no-browser --allow-root --ip='*'
    ;;
  *)
    $@
    ;;
esac

exit 0
