#include "tags.h"

// #include "img.h"
Element::Element(std::string path, std::string name) {
    TagLib::FileRef song(path.c_str());

    if (!song.isNull() && song.tag()) {
        m_info = song;
        m_path = path;
        m_name = name;
        addSongInfo(song);
    }
};

Element::~Element(){

};

void Element::addSongInfo(TagLib::FileRef song) {
    m_song.album = song.tag()->album();
    m_song.artist = song.tag()->artist();
    m_song.comment = song.tag()->comment();
    m_song.genre = song.tag()->genre();
    m_song.title = song.tag()->title();
    m_song.year = TagLib::String::number(song.tag()->year());
    m_song.track = TagLib::String::number(song.tag()->track());
    if (song.audioProperties()) {
        TagLib::AudioProperties *properties = song.audioProperties();
        int seconds = properties->length() % 60;
        int minutes = (properties->length() - seconds) / 60;

        m_song.bitrate = TagLib::String::number(properties->bitrate());
        m_song.sampleRate = TagLib::String::number(properties->sampleRate());
        m_song.channels = TagLib::String::number(properties->channels());
        m_song.minutes = TagLib::String::number(minutes);
        m_song.seconds = TagLib::String::number(seconds);
    }
    if (checkTag(m_name, "MP3"))
        m_song.lyrics = lyricsGet();
};

void Element::setNewInfo(t_Element new_info) {
    if (!m_info.isNull() && m_info.tag()) {
        m_info.tag()->setAlbum(new_info.album);
        m_info.tag()->setArtist(new_info.artist);
        m_info.tag()->setComment(new_info.comment);
        m_info.tag()->setGenre(new_info.genre);
        m_info.tag()->setTitle(new_info.title);
        m_info.tag()->setYear(new_info.year.toInt());
        m_info.tag()->setTrack(new_info.track.toInt());
        if (checkTag(m_name, "MP3"))
            lyricsSet(new_info.lyrics.toCString());
        addSongInfo(m_info);
        m_info.save();
    }
};

void Element::lyricsSet(std::string lyrics) {
    TagLib::MPEG::File file(m_path.c_str());
    TagLib::ID3v2::FrameList frames = file.ID3v2Tag()->frameListMap()["USLT"];
    TagLib::ID3v2::UnsynchronizedLyricsFrame *frame =
        new TagLib::ID3v2::UnsynchronizedLyricsFrame;

    if (!file.ID3v2Tag()->frameListMap()["USLT"].isEmpty())
        file.ID3v2Tag()->removeFrames(file.ID3v2Tag()->frameListMap()["USLT"].front()->frameID());
    frame->setText(lyrics);
    file.ID3v2Tag()->addFrame(frame);
    file.save();
}

// void Element::setNewImg(std::string img) {
//     img + " ";
//     // if (checkTag(m_name, "MP3"))
//     //     ImageFile::getImageFile(img)->setArt(m_path);
// };

TagLib::String Element::lyricsGet(void) {
    TagLib::String lyrics;
    TagLib::MPEG::File file(m_path.c_str());
    TagLib::ID3v2::FrameList frames = file.ID3v2Tag()->frameListMap()["USLT"];
    TagLib::ID3v2::UnsynchronizedLyricsFrame *frame = NULL;

    if (!frames.isEmpty()) {
        frame = dynamic_cast<TagLib::ID3v2::UnsynchronizedLyricsFrame *>(frames.front());
        if (frame)
            lyrics = frame->text();
    }
    return lyrics;
}

t_Element &Element::getInfo(void) {
    return m_song;
}

TagLib::String &Element::getElemInfo(unsigned int index) {
    return ((TagLib::String *)&m_song)[index];
};

std::string &Element::getPath(void) {
    return m_path;
}

std::string &Element::getName(void) {
    return m_name;
}
