# Install script for directory: /Users/dmushynska/Desktop/utag/3dparty/taglib/taglib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/dmushynska/.brew")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/dmushynska/.brew/lib/libtag.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/dmushynska/.brew/lib" TYPE STATIC_LIBRARY FILES "/Users/dmushynska/Desktop/utag/build/3dparty/taglib/taglib/libtag.a")
  if(EXISTS "$ENV{DESTDIR}/Users/dmushynska/.brew/lib/libtag.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/dmushynska/.brew/lib/libtag.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}/Users/dmushynska/.brew/lib/libtag.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/dmushynska/.brew/include/taglib/tag.h;/Users/dmushynska/.brew/include/taglib/fileref.h;/Users/dmushynska/.brew/include/taglib/audioproperties.h;/Users/dmushynska/.brew/include/taglib/taglib_export.h;/Users/dmushynska/.brew/include/taglib/taglib_config.h;/Users/dmushynska/.brew/include/taglib/taglib.h;/Users/dmushynska/.brew/include/taglib/tstring.h;/Users/dmushynska/.brew/include/taglib/tlist.h;/Users/dmushynska/.brew/include/taglib/tlist.tcc;/Users/dmushynska/.brew/include/taglib/tstringlist.h;/Users/dmushynska/.brew/include/taglib/tbytevector.h;/Users/dmushynska/.brew/include/taglib/tbytevectorlist.h;/Users/dmushynska/.brew/include/taglib/tbytevectorstream.h;/Users/dmushynska/.brew/include/taglib/tiostream.h;/Users/dmushynska/.brew/include/taglib/tfile.h;/Users/dmushynska/.brew/include/taglib/tfilestream.h;/Users/dmushynska/.brew/include/taglib/tmap.h;/Users/dmushynska/.brew/include/taglib/tmap.tcc;/Users/dmushynska/.brew/include/taglib/tpropertymap.h;/Users/dmushynska/.brew/include/taglib/trefcounter.h;/Users/dmushynska/.brew/include/taglib/tdebuglistener.h;/Users/dmushynska/.brew/include/taglib/mpegfile.h;/Users/dmushynska/.brew/include/taglib/mpegproperties.h;/Users/dmushynska/.brew/include/taglib/mpegheader.h;/Users/dmushynska/.brew/include/taglib/xingheader.h;/Users/dmushynska/.brew/include/taglib/id3v1tag.h;/Users/dmushynska/.brew/include/taglib/id3v1genres.h;/Users/dmushynska/.brew/include/taglib/id3v2.h;/Users/dmushynska/.brew/include/taglib/id3v2extendedheader.h;/Users/dmushynska/.brew/include/taglib/id3v2frame.h;/Users/dmushynska/.brew/include/taglib/id3v2header.h;/Users/dmushynska/.brew/include/taglib/id3v2synchdata.h;/Users/dmushynska/.brew/include/taglib/id3v2footer.h;/Users/dmushynska/.brew/include/taglib/id3v2framefactory.h;/Users/dmushynska/.brew/include/taglib/id3v2tag.h;/Users/dmushynska/.brew/include/taglib/attachedpictureframe.h;/Users/dmushynska/.brew/include/taglib/commentsframe.h;/Users/dmushynska/.brew/include/taglib/eventtimingcodesframe.h;/Users/dmushynska/.brew/include/taglib/generalencapsulatedobjectframe.h;/Users/dmushynska/.brew/include/taglib/ownershipframe.h;/Users/dmushynska/.brew/include/taglib/popularimeterframe.h;/Users/dmushynska/.brew/include/taglib/privateframe.h;/Users/dmushynska/.brew/include/taglib/relativevolumeframe.h;/Users/dmushynska/.brew/include/taglib/synchronizedlyricsframe.h;/Users/dmushynska/.brew/include/taglib/textidentificationframe.h;/Users/dmushynska/.brew/include/taglib/uniquefileidentifierframe.h;/Users/dmushynska/.brew/include/taglib/unknownframe.h;/Users/dmushynska/.brew/include/taglib/unsynchronizedlyricsframe.h;/Users/dmushynska/.brew/include/taglib/urllinkframe.h;/Users/dmushynska/.brew/include/taglib/chapterframe.h;/Users/dmushynska/.brew/include/taglib/tableofcontentsframe.h;/Users/dmushynska/.brew/include/taglib/podcastframe.h;/Users/dmushynska/.brew/include/taglib/oggfile.h;/Users/dmushynska/.brew/include/taglib/oggpage.h;/Users/dmushynska/.brew/include/taglib/oggpageheader.h;/Users/dmushynska/.brew/include/taglib/xiphcomment.h;/Users/dmushynska/.brew/include/taglib/vorbisfile.h;/Users/dmushynska/.brew/include/taglib/vorbisproperties.h;/Users/dmushynska/.brew/include/taglib/oggflacfile.h;/Users/dmushynska/.brew/include/taglib/speexfile.h;/Users/dmushynska/.brew/include/taglib/speexproperties.h;/Users/dmushynska/.brew/include/taglib/opusfile.h;/Users/dmushynska/.brew/include/taglib/opusproperties.h;/Users/dmushynska/.brew/include/taglib/flacfile.h;/Users/dmushynska/.brew/include/taglib/flacpicture.h;/Users/dmushynska/.brew/include/taglib/flacproperties.h;/Users/dmushynska/.brew/include/taglib/flacmetadatablock.h;/Users/dmushynska/.brew/include/taglib/apefile.h;/Users/dmushynska/.brew/include/taglib/apeproperties.h;/Users/dmushynska/.brew/include/taglib/apetag.h;/Users/dmushynska/.brew/include/taglib/apefooter.h;/Users/dmushynska/.brew/include/taglib/apeitem.h;/Users/dmushynska/.brew/include/taglib/mpcfile.h;/Users/dmushynska/.brew/include/taglib/mpcproperties.h;/Users/dmushynska/.brew/include/taglib/wavpackfile.h;/Users/dmushynska/.brew/include/taglib/wavpackproperties.h;/Users/dmushynska/.brew/include/taglib/trueaudiofile.h;/Users/dmushynska/.brew/include/taglib/trueaudioproperties.h;/Users/dmushynska/.brew/include/taglib/rifffile.h;/Users/dmushynska/.brew/include/taglib/aifffile.h;/Users/dmushynska/.brew/include/taglib/aiffproperties.h;/Users/dmushynska/.brew/include/taglib/wavfile.h;/Users/dmushynska/.brew/include/taglib/wavproperties.h;/Users/dmushynska/.brew/include/taglib/infotag.h;/Users/dmushynska/.brew/include/taglib/asffile.h;/Users/dmushynska/.brew/include/taglib/asfproperties.h;/Users/dmushynska/.brew/include/taglib/asftag.h;/Users/dmushynska/.brew/include/taglib/asfattribute.h;/Users/dmushynska/.brew/include/taglib/asfpicture.h;/Users/dmushynska/.brew/include/taglib/mp4file.h;/Users/dmushynska/.brew/include/taglib/mp4atom.h;/Users/dmushynska/.brew/include/taglib/mp4tag.h;/Users/dmushynska/.brew/include/taglib/mp4item.h;/Users/dmushynska/.brew/include/taglib/mp4properties.h;/Users/dmushynska/.brew/include/taglib/mp4coverart.h;/Users/dmushynska/.brew/include/taglib/modfilebase.h;/Users/dmushynska/.brew/include/taglib/modfile.h;/Users/dmushynska/.brew/include/taglib/modtag.h;/Users/dmushynska/.brew/include/taglib/modproperties.h;/Users/dmushynska/.brew/include/taglib/itfile.h;/Users/dmushynska/.brew/include/taglib/itproperties.h;/Users/dmushynska/.brew/include/taglib/s3mfile.h;/Users/dmushynska/.brew/include/taglib/s3mproperties.h;/Users/dmushynska/.brew/include/taglib/xmfile.h;/Users/dmushynska/.brew/include/taglib/xmproperties.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/dmushynska/.brew/include/taglib" TYPE FILE FILES
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/tag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/fileref.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/audioproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/taglib_export.h"
    "/Users/dmushynska/Desktop/utag/build/3dparty/taglib/taglib/../taglib_config.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/taglib.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tstring.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tlist.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tlist.tcc"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tstringlist.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tbytevector.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tbytevectorlist.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tbytevectorstream.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tiostream.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tfilestream.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tmap.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tmap.tcc"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tpropertymap.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/trefcounter.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/toolkit/tdebuglistener.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/mpegfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/mpegproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/mpegheader.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/xingheader.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v1/id3v1tag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v1/id3v1genres.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2frame.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2header.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2footer.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/id3v2tag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/eventtimingcodesframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/privateframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/synchronizedlyricsframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/chapterframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/tableofcontentsframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpeg/id3v2/frames/podcastframe.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/oggfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/oggpage.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/oggpageheader.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/xiphcomment.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/vorbis/vorbisfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/vorbis/vorbisproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/flac/oggflacfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/speex/speexfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/speex/speexproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/opus/opusfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ogg/opus/opusproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/flac/flacfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/flac/flacpicture.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/flac/flacproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/flac/flacmetadatablock.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ape/apefile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ape/apeproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ape/apetag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ape/apefooter.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/ape/apeitem.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpc/mpcfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mpc/mpcproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/wavpack/wavpackfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/wavpack/wavpackproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/trueaudio/trueaudiofile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/trueaudio/trueaudioproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/rifffile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/aiff/aifffile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/aiff/aiffproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/wav/wavfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/wav/wavproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/riff/wav/infotag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/asf/asffile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/asf/asfproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/asf/asftag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/asf/asfattribute.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/asf/asfpicture.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4file.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4atom.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4tag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4item.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4properties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mp4/mp4coverart.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mod/modfilebase.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mod/modfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mod/modtag.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/mod/modproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/it/itfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/it/itproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/s3m/s3mfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/s3m/s3mproperties.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/xm/xmfile.h"
    "/Users/dmushynska/Desktop/utag/3dparty/taglib/taglib/xm/xmproperties.h"
    )
endif()

