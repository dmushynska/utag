#pragma once

#include <QDebug>
#include <QDir>
#include <QFileInfoList>
#include <QTableWidget>

#include "tags.h"
#include <iostream>

 inline std::string fullPath(std::string path, std::string name) {
     std::string fullPath = path;

     if (path.back() != '/')
         fullPath += "/";
     fullPath += name;
     return fullPath;
 };

class MyQTableWidget : public QTableWidget {
    Q_OBJECT
public:
    int my_size = 0;
    QString path;
    QTableWidgetItem *Name;
    QTableWidgetItem *Name1;
    QTableWidgetItem *Name2;
    QTableWidgetItem *Name3;
    QTableWidgetItem *Name4;
    QTableWidgetItem *Name5;
    QTableWidgetItem *Name6;
    QTableWidgetItem *Name7;
    QTableWidgetItem *Name8;

    void delete_table() {
        setRowCount(0);
        setColumnCount(0);
    }

    void deleteHorizontalItem() {
        delete Name;
        delete Name1;
        delete Name2;
        delete Name3;
        delete Name4;
        delete Name5;
        delete Name6;
        delete Name7;
        // delete Name8;
    }

    QFileInfoList open_dir(QString s) {
        path = s;
        QDir dir(s);
        dir.setNameFilters(QStringList() << "*wav"<< "*.ogg" << "*.flac " << "*.mp3");
        return dir.entryInfoList();
    }

    void setHorizontalItem() {
        setColumnCount(8);
        Name = new QTableWidgetItem{"path"};
        Name1 = new QTableWidgetItem{"album"};
        Name2 = new QTableWidgetItem{"artist"};
        Name3 = new QTableWidgetItem{"year"};
        Name4 = new QTableWidgetItem{"track"};
        Name5 = new QTableWidgetItem{"title"};
        Name6 = new QTableWidgetItem{"lyrics"};
        Name7 = new QTableWidgetItem{"comment"};
//        Name8 = new QTableWidgetItem{"photo"};
        setHorizontalHeaderItem(0, Name);
        setHorizontalHeaderItem(1, Name1);
        setHorizontalHeaderItem(2, Name2);
        setHorizontalHeaderItem(3, Name3);
        setHorizontalHeaderItem(4, Name4);
        setHorizontalHeaderItem(5, Name5);
        setHorizontalHeaderItem(6, Name6);
        setHorizontalHeaderItem(7, Name7);
//        setHorizontalHeaderItem(8, Name8);
    }

    void lol() {
        for (int i = 0; i < my_size; i++) {
               Element elem(fullPath(path.toStdString(), item(i, 0)->text().toStdString()), item(i, 0)->text().toStdString());
               t_Element info;

               info.album = item(i, 1)->text().toStdString();
               std::cout << fullPath(path.toStdString(), item(i, 0)->text().toStdString()) << std::endl;
               info.artist = item(i, 2)->text().toStdString();
               info.year = item(i, 3)->text().toStdString();
               info.track = item(i, 4)->text().toStdString();
               info.title = item(i, 5)->text().toStdString();
               info.lyrics = item(i, 6)->text().toStdString();
               info.comment = item(i, 7)->text().toStdString();
               elem.setNewInfo(info);
        }
    }

    void new_table(QFileInfoList list) {
        my_size = list.size();
        setShowGrid(true);
        setSelectionBehavior(QAbstractItemView::SelectItems);
        setRowCount(list.size());
        setSortingEnabled(true);
        int i = 0;
        foreach (auto it, list) {
            Element elem(it.filePath().toStdString(), it.fileName().toStdString());
            QTableWidgetItem *item = new QTableWidgetItem(it.fileName());
            item->setFlags(Qt::ItemIsEditable);
            item->setTextAlignment(Qt::AlignCenter);
            setItem(i, 0, item);
            QTableWidgetItem *item1 = new QTableWidgetItem(elem.getInfo().album.toCString());
            item1->setTextAlignment(Qt::AlignCenter);
            setItem(i, 1, item1);
            QTableWidgetItem *item2 = new QTableWidgetItem(elem.getInfo().artist.toCString());
            item2->setTextAlignment(Qt::AlignCenter);
            setItem(i, 2, item2);
            QTableWidgetItem *item3 = new QTableWidgetItem(elem.getInfo().year.toCString());
            item3->setTextAlignment(Qt::AlignCenter);
            setItem(i, 3, item3);
            QTableWidgetItem *item4 = new QTableWidgetItem(elem.getInfo().track.toCString());
            item4->setTextAlignment(Qt::AlignCenter);
            setItem(i, 4, item4);
            QTableWidgetItem *item5 = new QTableWidgetItem(elem.getInfo().title.toCString());
            item5->setTextAlignment(Qt::AlignCenter);
            setItem(i, 5, item5);
            QTableWidgetItem *item6 = new QTableWidgetItem(elem.getInfo().lyrics.toCString());
            item6->setTextAlignment(Qt::AlignCenter);
            setItem(i, 6, item6);
            QTableWidgetItem *item7 = new QTableWidgetItem(elem.getInfo().comment.toCString());
            item7->setTextAlignment(Qt::AlignCenter);
            setItem(i, 7, item7);
//            QTableWidgetItem *item8 = new QTableWidgetItem;
//            item8->setData(Qt::DecorationRole, QPixmap(QPixmap("/Users/dmushynska/Desktop/Qt Creator.png").scaled(100, 100, Qt::IgnoreAspectRatio)));
//            setItem(i, 8, item8);
            resizeColumnsToContents();
            resizeRowsToContents();
            i++;
        }
    }
    // void change_table() {
    //     ~MyQTableWidget();
    // }

    explicit MyQTableWidget(QWidget *per = nullptr);
    ~MyQTableWidget();

protected:
    void commitData(QWidget *editor) override;
signals:
    void Notify(QString message);
public slots:
    void someSlot(int x, int y);
};
