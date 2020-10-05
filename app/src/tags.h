#pragma once
#include <sys/stat.h>
#include <iomanip>
#include <vector>
#include <map>
#include <stdlib.h>
#include <cstdio>
#include <fstream>
#include <istream>
#include <string.h>
#include "taglib_config.h"
#include "tfile.h"
#include "fileref.h"
#include "tag.h"
#include "tpropertymap.h"
#include "id3v2tag.h"
#include "id3v2frame.h"
#include "id3v2header.h"
#include "mpegfile.h"
#include "attachedpictureframe.h"
#include "unsynchronizedlyricsframe.h"
#include "synchronizedlyricsframe.h"
// #include "img.h"


// inline std::string fullPath(std::string path, char *name) {
//     std::string fullPath = path;

//     if (path.back() != '/')
//         fullPath += "/";
//     fullPath += name;
//     return fullPath;
// };

inline bool checkTag(std::string name, std::string cmp) {
    std::string sub = name.substr(name.size() - 3);
    std::transform(sub.begin(), sub.end(), sub.begin(), ::toupper);
    if (sub == cmp)
        return true;
    return false;
}

typedef struct s_Element {
    TagLib::String album;
    TagLib::String artist;
    TagLib::String comment;
    TagLib::String genre;
    TagLib::String title;
    TagLib::String year;
    TagLib::String track;
    TagLib::String lyrics;

    TagLib::String bitrate;
    TagLib::String sampleRate;
    TagLib::String channels;
    TagLib::String minutes;
    TagLib::String seconds;
}              t_Element;

class Element {
public:
    Element(std::string path, std::string name);
    ~Element();

    void addSongInfo(TagLib::FileRef song);
    void setNewInfo(t_Element new_info);
    // void setNewImg(std::string img);
    void lyricsSet(std::string lyrics);
    TagLib::String lyricsGet(void);

    t_Element &getInfo(void);
    TagLib::String &getElemInfo(unsigned int index);
    std::string &getPath(void);
    std::string &getName(void);

private:
    TagLib::FileRef m_info;
    std::string m_path;
    std::string m_name;
    t_Element m_song;
};
