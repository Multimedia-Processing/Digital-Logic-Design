

```
wsl> cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
-- The C compiler identification is GNU 9.3.0
-- The CXX compiler identification is GNU 9.3.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: Adjusting output directories
-- Conan: Using cmake global configuration
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Current conanbuildinfo.cmake directory: /mnt/wsl/docker-desktop-bind-mounts/Ubuntu-20.04/fdbd7e23af76ca956070b6eadda658eaefba4c755edccae5481002971e28d70b/course/sa/c/se/conan/md5/build
-- Conan: Compiler GCC>=5, checking major version 9
-- Conan: Checking correct version: 9
-- Configuring done
-- Generating done
-- Build files have been written to: /mnt/wsl/docker-desktop-bind-mounts/Ubuntu-20.04/fdbd7e23af76ca956070b6eadda658eaefba4c755edccae5481002971e28d70b/course/sa/c/se/conan/md5/build
wsl> cmake --build .
Scanning dependencies of target md5
make[2]: Warning: File 'CMakeFiles/md5.dir/depend.make' has modification time 
3.4 s in the future
[ 50%] Building CXX object CMakeFiles/md5.dir/md5.cpp.o
[100%] Linking CXX executable bin/md5
/usr/bin/ld: CMakeFiles/md5.dir/md5.cpp.o: in function `main':
md5.cpp:(.text.startup+0xad): undefined reference to `Poco::DigestEngine::digestToHex[abi:cxx11](std::vector<unsigned char, std::allocator<unsigned char> > 
const&)'
collect2: error: ld returned 1 exit status
make[2]: *** [CMakeFiles/md5.dir/build.make:84: bin/md5] Error 1
make[1]: *** [CMakeFiles/Makefile2:76: CMakeFiles/md5.dir/all] Error 2        
make: *** [Makefile:84: all] Error 2
wsl> pwd
/mnt/wsl/docker-desktop-bind-mounts/Ubuntu-20.04/fdbd7e23af76ca956070b6eadda658eaefba4c755edccae5481002971e28d70b/course/sa/c/se/conan/md5/build
```
