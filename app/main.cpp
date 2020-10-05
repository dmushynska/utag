#include <QApplication>
#include <QCheckBox>
#include <QDebug>
#include <QGridLayout>
#include <QLabel>
#include <QMainWindow>
#include <QMessageBox>
#include <QPushButton>
#include <QScrollArea>
#include <QTableWidget>
#include <QtGui>

#include "mainwindow.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    QString string = 0;
    if (argc == 2) {
        if (QDir(argv[1]).exists() == 0) {
            QMessageBox messageBox;
            messageBox.critical(0, "Error", "Not exixt mkdir \n" + QString(argv[1]));
            messageBox.setFixedSize(500, 200);
        }
        else {
            string = QString(argv[1]);
        }
    } else if (argc != 1) {
        std::cout << "usage error\n";
        return 1;
    }
    MainWindow w1(string);
    w1.show();
    return a.exec();
}
