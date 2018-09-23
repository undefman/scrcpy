all: clean
	meson out --buildtype release --strip -Db_lto=true -Dprebuilt_server=scrcpy-server-v1.3.jar
clean:
	rm -rf out && mkdir -p out
install:
	
	cd out && sudo ninja install && cd ../
