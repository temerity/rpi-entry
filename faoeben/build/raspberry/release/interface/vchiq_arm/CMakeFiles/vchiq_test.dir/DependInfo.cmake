# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_C
  "/home/pi/broadcom-master/brcm_usrlib/dag/vmcsx/interface/vchiq_arm/vchiq_test.c" "/home/pi/broadcom-master/brcm_usrlib/dag/vmcsx/build/raspberry/release/interface/vchiq_arm/CMakeFiles/vchiq_test.dir/vchiq_test.c.o"
  )
SET(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
SET(CMAKE_TARGET_DEFINITIONS
  "_REENTRANT"
  "USE_VCHIQ_ARM"
  "VCHI_BULK_ALIGN=1"
  "VCHI_BULK_GRANULARITY=1"
  "OMX_SKIP64BIT"
  "EGL_SERVER_DISPMANX"
  "_LARGEFILE_SOURCE"
  "_LARGEFILE64_SOURCE"
  "_FILE_OFFSET_BITS=64"
  "__VIDEOCORE4__"
  "TV_SUPPORTED_MODE_NO_DEPRECATED"
  )

# Targets to which this target links.
SET(CMAKE_TARGET_LINKED_INFO_FILES
  "/home/pi/broadcom-master/brcm_usrlib/dag/vmcsx/build/raspberry/release/interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/DependInfo.cmake"
  "/home/pi/broadcom-master/brcm_usrlib/dag/vmcsx/build/raspberry/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/DependInfo.cmake"
  "/home/pi/broadcom-master/brcm_usrlib/dag/vmcsx/build/raspberry/release/interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/DependInfo.cmake"
  )

# The include file search paths:
SET(CMAKE_C_TARGET_INCLUDE_PATH
  "../../../host_applications/framework"
  "../../.."
  "../../../interface/vcos/pthreads"
  "../../../interface/vmcs_host/linux"
  "../../../interface/vmcs_host/khronos"
  "../../../interface/khronos/include"
  "."
  "../../../interface/vchiq_arm"
  "../../../host_support/include"
  "../../../interface/vchiq_arm/../.."
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
