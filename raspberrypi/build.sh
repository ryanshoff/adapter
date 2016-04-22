#!/bin/sh

#compile as 32-bit statically linking as much as possible except FANUC fwlib32
#the following libraries are needed assuming built on Ubuntu 14.04
#/lib/ld-linux.so.2
#/lib/i386-linux-gnu/libpthread.so.0
#/lib/i386-linux-gnu/libc.so.6
#/lib/i386-linux-gnu/libm.so.6
#/lib/i386-linux-gnu/libgcc_s.so.1
#libfwlib32.so.1 from FANUC CD

g++ -m32 minIni.c device_datum.cpp fanuc_axis.cpp fanuc_path.cpp service.cpp condition.cpp cutting_tool.cpp string_buffer.cpp logger.cpp client.cpp server.cpp adapter.cpp fanuc_adapter.cpp FanucAdapter.cpp -lfwlib32 -lpthread -static-libstdc++ -static-libgcc -o adapter
