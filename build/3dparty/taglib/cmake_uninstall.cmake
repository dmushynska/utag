if (NOT EXISTS "/Users/dmushynska/Desktop/utag/build/3dparty/taglib/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: \"/Users/dmushynska/Desktop/utag/build/3dparty/taglib/install_manifest.txt\"")
endif()

file(READ "/Users/dmushynska/Desktop/utag/build/3dparty/taglib/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach (file ${files})
  message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  if (EXISTS "$ENV{DESTDIR}${file}")
    execute_process(
      COMMAND /Users/dmushynska/.brew/Cellar/cmake/3.18.2/bin/cmake -E remove "$ENV{DESTDIR}${file}"
      OUTPUT_VARIABLE rm_out
      RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif ()
  else ()
    message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
  endif ()
endforeach()
