# Install script for directory: /Users/cibclivelabs/Desktop/PayCards_Android/sdk/src/main/cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/armneon2x86sse/cmake_install.cmake")
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/eigen/cmake_install.cmake")
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/protobuf/cmake_install.cmake")
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/caffe/cmake_install.cmake")
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/libyuv/cmake_install.cmake")
  include("/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/crossplatform/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/cibclivelabs/Desktop/PayCards_Android/sdk/.cxx/cmake/debug/arm64-v8a/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
