#include "myqtablewidget.h"

void MyQTableWidget::commitData(QWidget *editor) {
    QAbstractItemView::commitData(editor);

    for (auto &item : selectedIndexes())
        model()->setData(item, currentItem()->data(Qt::EditRole), Qt::EditRole);
}

void MyQTableWidget::someSlot(int x, int y) {
    qDebug() << "yes" << x << y;
}

MyQTableWidget::MyQTableWidget(QWidget *per) : QTableWidget(per) {}

// void MyQTableWidget::new_table(int size, QFileInfoList &list) {
//     my_size = size;
//     setShowGrid(true);
//     setSelectionBehavior(QAbstractItemView::SelectItems);
//     setRowCount(size);
//     setSortingEnabled(true);
// //             for(int j = 0; j < 7; j++) {
// //                 for (int i = 0; i < size; i++) {
// //                     QTableWidgetItem *item = new QTableWidgetItem("1");
// //                     item->setTextAlignment(Qt::AlignCenter);
// //                     setItem(i, j, item);
// //                 }
// //             }
// //             for (int i = 0; i < size; i++) {
// //                 setItem(i, 6, new QTableWidgetItem { "text" });
// //                 setItem(i, 7, new QTableWidgetItem { "text" });
// //             }
// //             for (int i = 0; i < size; i++) {
// //                 QTableWidgetItem *item = new QTableWidgetItem;
// //                 item->setData(Qt::DecorationRole,QPixmap(QPixmap("/Users/dmushynska/Desktop/Qt Creator.png").scaled(100,100,Qt::IgnoreAspectRatio)));
// //                 setItem(i, 8, item);
// // //                item->setFlags(Qt::ItemIsEditable);
// //             }
//     }

MyQTableWidget::~MyQTableWidget() {
    delete_table();
} 