#!/bin/bash
#./configure \
#	--enable-ffplay \
#	--enable-gpl \
#	--enable-libx264  \
#	--enable-libx265 \
#	--enable-static \
#	--enable-shared  \
#	--enable-debug  \
#	--disable-x86asm  \
#	#--enable-libsrt 
#	--extra-cflags=-g \
#	--extra-ldflags=-g \
#	--enable-libfdk-aac  \
#	--enable-nonfree
#	
#make clean
make -j8
sudo make install
sudo rm /usr/local/lib/libav*
sudo cp ./*/*.so* /usr/local/lib
