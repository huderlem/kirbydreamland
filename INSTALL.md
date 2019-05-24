# Linux

Dependencies:

	sudo apt-get install make gcc bison git
	sudo easy_install pip

The assembler used is [**rgbds**](https://github.com/bentley/rgbds).

	git clone https://github.com/rednex/rgbds
	cd rgbds
	sudo mkdir -p /usr/local/man/man{1,7}
	sudo make install
	cd ..
	rm -rf rgbds

Set up the repository.

	git clone https://github.com/huderlem/kirbydreamland
	cd kirbydreamland

This project is incomplete and requires the user to provide an original Kirby's Dream Land ROM.  Name this file `baserom.gb` and place it in the root `kirbydreamland` directory.

To build `kirbydreamland.gb`:

	make

This will take a few seconds the first time you build because it needs to process all of the graphics.

To remove all generated files by the build process:

	make clean

To compare the built `kirbydreamland.gb` to the original ROM:

	make compare


# OS X

In the shell, run:

	xcode-select --install

Then follow the Linux instructions.


# Windows

To build on Windows, install [**Cygwin**](http://cygwin.com/install.html) with the default settings.

Dependencies are downloaded in the installer rather than the command line.
Select the following packages:
* make
* git
* gcc-core

The latest compatible version of **rgbds** is  [**0.3.8**](https://github.com/rednex/rgbds/releases/download/v0.3.8/rgbds-0.3.8-win32.zip). To install, put each of the files in the download in `C:\cygwin\usr\local\bin`.  **Note, rgbds 0.3.8 has a bug when setting a 16-character ROM  header title, which was fixed in this commit: https://github.com/rednex/rgbds/commit/b2c1f6122eb5ed5a9070c8cf0450f0cf826f6edd.  Without applying this fix in your rgbds workflow, your built ROM will differ from the original by one byte in the header.**

Then set up the repository. In the **Cygwin terminal**:

	git clone https://github.com/huderlem/kirbydreamland.git
	cd kirbydreamland

To build `kirbydreamland.gb`:

	make
