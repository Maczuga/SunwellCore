# Copyright (C) 
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(Detour_STAT_SRCS
    DetourAlloc.cpp 
    DetourCommon.cpp 
    DetourNavMesh.cpp 
    DetourNavMeshBuilder.cpp 
    DetourNavMeshQuery.cpp 
    DetourNode.cpp 
)

add_library(Detour STATIC ${Detour_STAT_SRCS})

target_include_directories(Detour
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(Detour
  PUBLIC
    zlib)

set_target_properties(Detour
    PROPERTIES
      FOLDER
        "dep")
