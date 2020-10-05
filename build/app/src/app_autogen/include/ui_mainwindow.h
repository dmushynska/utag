/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.15.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>
#include <myqtablewidget.h>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QPushButton *pushButton_7;
    QPushButton *pushButton_10;
    QPushButton *dir_2;
    MyQTableWidget *tableWidget;
    QPushButton *pushButton_6;
    MyQTableWidget *tableWidget_2;
    QPushButton *pushButton_8;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1543, 992);
        MainWindow->setMinimumSize(QSize(1543, 992));
        MainWindow->setMaximumSize(QSize(1543, 992));
        MainWindow->setTabletTracking(false);
        MainWindow->setAcceptDrops(false);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        pushButton_7 = new QPushButton(centralWidget);
        pushButton_7->setObjectName(QString::fromUtf8("pushButton_7"));
        pushButton_7->setGeometry(QRect(110, 0, 111, 61));
        pushButton_10 = new QPushButton(centralWidget);
        pushButton_10->setObjectName(QString::fromUtf8("pushButton_10"));
        pushButton_10->setGeometry(QRect(210, 0, 281, 61));
        dir_2 = new QPushButton(centralWidget);
        dir_2->setObjectName(QString::fromUtf8("dir_2"));
        dir_2->setGeometry(QRect(10, 0, 111, 61));
        tableWidget = new MyQTableWidget(centralWidget);
        tableWidget->setObjectName(QString::fromUtf8("tableWidget"));
        tableWidget->setGeometry(QRect(10, 60, 1081, 841));
        tableWidget->setMinimumSize(QSize(261, 531));
        tableWidget->setAlternatingRowColors(false);
        tableWidget->setSelectionMode(QAbstractItemView::ExtendedSelection);
        tableWidget->setSelectionBehavior(QAbstractItemView::SelectItems);
        tableWidget->setSortingEnabled(false);
        pushButton_6 = new QPushButton(centralWidget);
        pushButton_6->setObjectName(QString::fromUtf8("pushButton_6"));
        pushButton_6->setGeometry(QRect(480, 0, 111, 61));
        tableWidget_2 = new MyQTableWidget(centralWidget);
        tableWidget_2->setObjectName(QString::fromUtf8("tableWidget_2"));
        tableWidget_2->setGeometry(QRect(1100, 60, 361, 841));
        tableWidget_2->setMinimumSize(QSize(261, 531));
        tableWidget_2->setAlternatingRowColors(false);
        tableWidget_2->setSelectionMode(QAbstractItemView::ExtendedSelection);
        tableWidget_2->setSelectionBehavior(QAbstractItemView::SelectItems);
        tableWidget_2->setSortingEnabled(false);
        pushButton_8 = new QPushButton(centralWidget);
        pushButton_8->setObjectName(QString::fromUtf8("pushButton_8"));
        pushButton_8->setGeometry(QRect(580, 0, 111, 61));
        pushButton_8->setStyleSheet(QString::fromUtf8(""));
        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1543, 22));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        pushButton_7->setText(QCoreApplication::translate("MainWindow", "Change", nullptr));
        pushButton_10->setText(QCoreApplication::translate("MainWindow", "List/Name dir", nullptr));
        dir_2->setText(QCoreApplication::translate("MainWindow", "Add", nullptr));
        pushButton_6->setText(QCoreApplication::translate("MainWindow", "Save", nullptr));
        pushButton_8->setText(QCoreApplication::translate("MainWindow", "Dark", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
