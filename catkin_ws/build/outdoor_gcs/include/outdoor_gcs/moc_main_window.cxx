/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/outdoor_gcs/include/outdoor_gcs/main_window.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_outdoor_gcs__MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      31,   25,   24,   24, 0x0a,
      52,   25,   24,   24, 0x0a,
      78,   25,   24,   24, 0x0a,
     103,   25,   24,   24, 0x0a,
     125,   25,   24,   24, 0x0a,
     151,   25,   24,   24, 0x0a,
     180,   25,   24,   24, 0x0a,
     209,   25,   24,   24, 0x0a,
     238,   25,   24,   24, 0x0a,
     269,   25,   24,   24, 0x0a,
     299,   25,   24,   24, 0x0a,
     332,   25,   24,   24, 0x0a,
     360,   25,   24,   24, 0x0a,
     390,   25,   24,   24, 0x0a,
     418,   24,   24,   24, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_outdoor_gcs__MainWindow[] = {
    "outdoor_gcs::MainWindow\0\0check\0"
    "on_ARM_clicked(bool)\0on_SET_HOME_clicked(bool)\0"
    "on_TAKEOFF_clicked(bool)\0on_LAND_clicked(bool)\0"
    "on_MODE_RTL_clicked(bool)\0"
    "on_MODE_LOITER_clicked(bool)\0"
    "on_MODE_MANUAL_clicked(bool)\0"
    "on_MODE_POSCTL_clicked(bool)\0"
    "on_MODE_OFFBOARD_clicked(bool)\0"
    "on_Set_GPS_Home_clicked(bool)\0"
    "on_Enable_Planning_clicked(bool)\0"
    "on_Button_Set_clicked(bool)\0"
    "on_Button_Set_H_clicked(bool)\0"
    "on_Button_Get_clicked(bool)\0updateuav()\0"
};

void outdoor_gcs::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->on_ARM_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->on_SET_HOME_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->on_TAKEOFF_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->on_LAND_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->on_MODE_RTL_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->on_MODE_LOITER_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->on_MODE_MANUAL_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->on_MODE_POSCTL_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->on_MODE_OFFBOARD_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->on_Set_GPS_Home_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->on_Enable_Planning_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 11: _t->on_Button_Set_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 12: _t->on_Button_Set_H_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 13: _t->on_Button_Get_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 14: _t->updateuav(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData outdoor_gcs::MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject outdoor_gcs::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_outdoor_gcs__MainWindow,
      qt_meta_data_outdoor_gcs__MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &outdoor_gcs::MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *outdoor_gcs::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *outdoor_gcs::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_outdoor_gcs__MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int outdoor_gcs::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
