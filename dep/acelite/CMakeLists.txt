# Copyright (C) 
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(ACE_EXPECTED_VERSION 5.8.3)

if(UNIX)
  # Look for an installed bzip2 on unix
  find_package(ACE REQUIRED)


  add_library(ace SHARED
    ${ace_STAT_SRCS}
    ${ace_PCH_SRC}
  )

  target_include_directories(ace
  PUBLIC
    zlib
    ${ACE_INCLUDE_DIR})

  set_target_properties(ace
    PROPERTIES
      FOLDER
        "dep")
      
else()
    add_subdirectory(ace)
endif()

