configure:
    cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release

build: configure
    cmake --build ./build        

test: build
    ctest --test-dir ./build
