INC_DIR= /opt/ARToolKit/include
LIB_DIR= /opt/ARToolKit/lib
BIN_DIR= /opt/ARToolKit/bin

LDFLAG=-pthread -lgstreamer-0.10 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lxml2 -lglib-2.0 -L/usr/X11R6/lib -L/usr/local/lib -L$(LIB_DIR)
LIBS= -lARgsub -lARvideo -lAR -lpthread -lglut -lGLU -lGL -lXi -lX11 -lm -pthread -lgstreamer-0.10 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lxml2 -lglib-2.0
CFLAG= -O -pthread -I/usr/include/gstreamer-0.10 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/libxml2 -I/usr/X11R6/include -g -I$(INC_DIR)

OBJS =
HEADDERS =

all: simpleTest

simpleTest: simpleTest.o $(OBJS)
	cc -o simpleTest simpleTest.o $(OBJS) $(LDFLAG) $(LIBS)

simpleTest.o: simpleTest.c $(HEADDERS)
	cc -c $(CFLAG) simpleTest.c

clean:
	rm -f *.o
	rm -f $(BIN_DIR)/simpleTest

allclean:
	rm -f *.o
	rm -f $(BIN_DIR)/simpleTest
	rm -f Makefile
