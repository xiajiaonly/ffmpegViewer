TARGET = ffmpegViewer
HEADERS += SSpinBox.h caValueMonitor.h
SOURCES += ffmpegViewer.cpp SSpinBox.cpp caValueMonitor.cpp
FORMS += ffmpegViewer.ui  
target.path = ../../prefix/bin
INSTALLS += target
INCLUDEPATH += ../ffmpegWidget
LIBS += -L../ffmpegWidget -lffmpegWidget
QMAKE_CLEAN += $$TARGET

# epics base stuff
INCLUDEPATH += $$(EPICS_BASE)/include $$(EPICS_BASE)/include/os/Linux
LIBS += -L$$(EPICS_BASE)/lib/linux-x86_64 -lca

# ffmpeg stuff
INCLUDEPATH += $$(FFMPEG_PREFIX)/include
LIBS += -L$$(FFMPEG_PREFIX)/lib -lswresample -lavfilter -lavdevice -lavformat -lavcodec -lavutil -lbz2 -lswscale
DEFINES += __STDC_CONSTANT_MACROS

# xvideo stuff
LIBS += -lXv
