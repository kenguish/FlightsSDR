# Copy the libusb and librtlsdr frameworks from macports, then execute these to change the linked locations

install_name_tool -id @executable_path/../Frameworks/libusb-1.0.0.dylib libusb-1.0.0.dylib
install_name_tool -id @executable_path/../Frameworks/librtlsdr.0.5git.dylib librtlsdr.0.5git.dylib

install_name_tool -change /opt/local/lib/libusb-1.0.0.dylib @executable_path/../Frameworks/libusb-1.0.0.dylib librtlsdr.0.5git.dylib
