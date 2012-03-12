wget http://ftp.gnome.org/pub/GNOME/desktop/2.32/2.32.1/sources/gnome-desktop-2.32.1.tar.bz2 --output-document=- | tar -xj
gapi2-parser sources.xml
gapi2-fixup --api=gnomedesktop-api.raw --metadata=metadata
gapi2-codegen --generate gnomedesktop-api.raw `pkg-config --cflags gtk-sharp-2.0` --outdir=generated --assembly-name=gnomedesktop-sharp
