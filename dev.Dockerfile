FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
	ghdl \
	make  \
	libcanberra-gtk-module \
	gtkwave \
	ruby

WORKDIR /VHDL_Linux

CMD ["bash"]
