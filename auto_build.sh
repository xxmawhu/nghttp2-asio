mkdir build -p
cd build
cfg=' -DLIBNGHTTP2_INCLUDE_DIR=/opt/nghttp2-1.64.0/include/ -DLIBNGHTTP2_LIBRARY=/opt/nghttp2-1.64.0/lib/libnghttp2.a -DCMAKE_INSTALL_PREFIX=/opt/nghttp2-asio -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc'
cmake .. -D ENABLE_STATIC_LIB=on -D ENABLE_SHARED_LIB=off ${cfg}

cmake --build .
sudo cmake --install .

cfg=' -DLIBNGHTTP2_INCLUDE_DIR=/opt/nghttp2-1.64.0/include/ -DLIBNGHTTP2_LIBRARY=/opt/nghttp2-1.64.0/lib/libnghttp2.so -DCMAKE_INSTALL_PREFIX=/opt/nghttp2-asio -DCMAKE_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc'
cmake .. -D ENABLE_STATIC_LIB=off -D ENABLE_SHARED_LIB=on ${cfg}
cmake --build .
sudo cmake --install .
