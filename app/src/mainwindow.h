#pragma once
#include "myqtablewidget.h"
#include <QMainWindow>


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    bool isDark = false;
    explicit MainWindow(QWidget *parent = nullptr);
    MainWindow(QString string, QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_dir_2_clicked();

    // void on_pushButton_5_clicked();

    // void on_pushButton_3_clicked();


    void on_pushButton_7_clicked();

    void on_pushButton_6_clicked();
    void on_pushButton_8_clicked();

    void on_tableWidget_2_itemClicked(QTableWidgetItem *item);

private:
//    QList <QString> list;
    
    int table_row = 0;
//    MyQTableWidget *table = new MyQTableWidget;
    Ui::MainWindow *ui;
    int dir_now;
};
