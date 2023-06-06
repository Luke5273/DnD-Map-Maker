all: build run

build: main.c
	gcc -DLIBDEFLATE_DLL -mfpmath=sse -msse -msse2 -I"C:/msys64/mingw64/include/gtk-4.0" -I"C:/msys64/mingw64/include/pango-1.0" -I"C:/msys64/mingw64/include/harfbuzz" -I"C:/msys64/mingw64/include/pango-1.0" -I"C:/msys64/mingw64/include/fribidi" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/gdk-pixbuf-2.0" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/webp" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/cairo" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/freetype2" -I"C:/msys64/mingw64/include/libpng16" -I"C:/msys64/mingw64/include/harfbuzz" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/pixman-1" -I"C:/msys64/mingw64/include/graphene-1.0" -I"C:/msys64/mingw64/lib/graphene-1.0/include" -I"C:/msys64/mingw64/include" -I"C:/msys64/mingw64/include/glib-2.0" -I"C:/msys64/mingw64/lib/glib-2.0/include" -I"C:/msys64/mingw64/include" main.c -o main.exe -L"C:/msys64/mingw64/lib" -l"gtk-4" -l"pangowin32-1.0" -l"pangocairo-1.0" -l"pango-1.0" -l"harfbuzz" -l"gdk_pixbuf-2.0" -l"cairo-gobject" -l"cairo" -l"graphene-1.0" -l"gio-2.0" -l"gobject-2.0" -l"glib-2.0" -l"intl"

run: 
	./main.exe