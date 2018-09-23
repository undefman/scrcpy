all:	clean
	meson out --buildtype release --strip -Db_lto=true -Dprebuilt_server=./server/scrcpy-server-v1.3.jar
clean:
	rm -rf out && mkdir out
install:
	cd out && sudo ninja install && cd ../
