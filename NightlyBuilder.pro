#-------------------------------------------------
#
# Project created by QtCreator 2015-04-06T23:01:49
#
#-------------------------------------------------

QT       += core gui widgets network

CONFIG += c++11

TARGET = NightlyBuilder
TEMPLATE = app

DEFINES += USE_FSTREAM

QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO

SOURCES += \
    src/main.cpp \
    src/dialogs/maindialog.cpp \
    src/core/statemanager.cpp \
    src/states/statepulling.cpp \
    src/states/stategeneratingbotversioncpp.cpp \
    src/states/state.cpp \
    src/states/stateqmaking.cpp \
    src/states/statemaking.cpp \
    src/states/statedeploying.cpp \
    src/states/statepackaging.cpp \
    src/states/stateuploading.cpp \
    src/states/statefactory.cpp \
    src/core/log.cpp \
    src/core/global.cpp \
    src/threads/deploythread.cpp \
    src/states/statecleaning.cpp \
    src/core/upload.cpp \
    src/threads/copythread.cpp

HEADERS  += \
    src/dialogs/maindialog.h \
    src/core/statemanager.h \
    src/states/statepulling.h \
    src/states/stategeneratingbotversioncpp.h \
    src/states/state.h \
    src/states/stateqmaking.h \
    src/states/statemaking.h \
    src/states/statedeploying.h \
    src/states/statepackaging.h \
    src/states/stateuploading.h \
    src/states/statefactory.h \
    src/core/log.h \
    src/core/global.h \
    src/threads/deploythread.h \
    src/states/statecleaning.h \
    src/core/upload.h \
    src/threads/copythread.h


INCLUDEPATH += \
    src/states \
    src/dialogs \
    src/core \
    src/threads

linux {
    !contains(QMAKE_HOST.arch, "x86_64") {
        DEFINES += LINUX_X86
    } else {
        DEFINES += LINUX_X64
    }
}

target.path = $$PREFIX/bin
desktop.files = NightlyBuilder.desktop
desktop.path = $$PREFIX/share/applications/
icons.path = $$PREFIX/share/icons/hicolor/apps/
icons.files = NightlyBuilder.png

INSTALLS += target desktop icons
