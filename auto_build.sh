mikdir build -p
cd build
cmake .. -D ENABLE_STATIC_LIB=on -D ENABLE_SHARED_LIB=off
cmake --build .
sudo make install

cmake .. -D ENABLE_STATIC_LIB=off -D ENABLE_SHARED_LIB=on
cmake --build .
sudo make install
