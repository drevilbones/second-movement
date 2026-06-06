set -m
podman run --rm -v $(pwd):/src emscripten/emsdk emmake make
python3 -m http.server -d build-sim &
qutebrowser http://localhost:8000/firmware.html
fg
rm -r build-sim
