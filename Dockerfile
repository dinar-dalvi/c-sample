FROM alpine:3.3 
RUN apk update
RUN apk add --no-cache make
RUN apk add --no-cache linux-headers
RUN apk add --no-cache texinfo
RUN apk add --no-cache gcc
RUN apk add --no-cache g++

#RUN mkdir gdb-build ;\
    #RUN cd gdb-build;\
    #RUN wget http://ftp.gnu.org/gnu/gdb/gdb-7.11.tar.xz;\
    #RUN tar -xvf gdb-7.11.tar.xz;\
    #RUN cd gdb-7.11;\
    #RUN ./configure --prefix=/usr;\
    #RUN make;\
    #RUN make -C gdb install;\
    #RUN cd ..;\
    #RUN rm -rf gdb-build/;

#COPY . /usr/src/myapp
#WORKDIR /usr/src/myapp
#RUN gcc -o hello hello.c
#CMD ["./hello"]