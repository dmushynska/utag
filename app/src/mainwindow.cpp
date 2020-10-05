#include "mainwindow.h"

#include <QDebug>
#include <QFileDialog>
#include <QHBoxLayout>
#include <QLineEdit>
#include <QPalette>

#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent),
                                          ui(new Ui::MainWindow) {
    ui->setupUi(this);
    // ui->tableWidget_2->hide();
    ui->tableWidget->setSelectionBehavior(QAbstractItemView::SelectRows);
    QFileInfoList list;
    ui->tableWidget->setHorizontalItem();
    ui->tableWidget_2->setColumnCount(1);
    ui->tableWidget_2->setHorizontalHeaderItem(0, new QTableWidgetItem{"Dir"});
}

MainWindow::MainWindow(QString string, QWidget *parent ) : QMainWindow(parent),
                                               ui(new Ui::MainWindow) {
    ui->setupUi(this);
    // ui->tableWidget_2->hide();
    ui->tableWidget->setSelectionBehavior(QAbstractItemView::SelectRows);
    QFileInfoList list;
    ui->tableWidget->setHorizontalItem();
    if (string.size() != 0) {
        ui->tableWidget->new_table(ui->tableWidget->open_dir(string));
        ui->pushButton_10->setText(string);
    }
    ui->tableWidget_2->setColumnCount(1);
    ui->tableWidget_2->setHorizontalHeaderItem(0, new QTableWidgetItem{"Dir"});
}

MainWindow::~MainWindow() {
    //    ui->tableWidget->deleteHorizontalItem();
    delete ui;
}

void MainWindow::on_dir_2_clicked() {
    QTableWidgetItem *item = new QTableWidgetItem;
    item->setText(QFileDialog::getExistingDirectory(this, tr("Open Directory"), "/home",
                                                    QFileDialog::ShowDirsOnly | QFileDialog::DontResolveSymlinks));
    if (item->text() != nullptr) {
        ui->tableWidget_2->setRowCount(table_row + 1);
        ui->tableWidget_2->setItem(table_row++, 0, item);
        ui->tableWidget_2->resizeColumnsToContents();
        ui->tableWidget_2->resizeRowsToContents();
    }
    //     else {
    //         delete item;
    //     }
}

void MainWindow::on_pushButton_7_clicked() {
    ui->tableWidget_2->resizeColumnsToContents();
    ui->tableWidget_2->resizeRowsToContents();
    ui->tableWidget_2->show();
}

void MainWindow::on_tableWidget_2_itemClicked(QTableWidgetItem *item) {
    ui->tableWidget->new_table(ui->tableWidget->open_dir(item->text()));
    ui->pushButton_10->setText(item->text());
    // ui->tableWidget_2->hide();
}

void MainWindow::on_pushButton_6_clicked() {
    ui->tableWidget->lol();
}

void MainWindow::on_pushButton_8_clicked() {
    if (isDark == true) {
        isDark = false;
        this->setStyleSheet("background-color: normal;");
    } else {
        isDark = true;
        auto style_sheet = QString(
                               "border: 1px solid green;"
                               "background-color: #%1;")
                               .arg(QPalette().color(QPalette::Base).rgba(), 0, 16);
        this->setStyleSheet(style_sheet);
    }
}
