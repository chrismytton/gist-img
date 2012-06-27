# gist-img(1)

Store images in gists.

## Status

**Experimental**

## Installation

`gist-img.sh` is a tiny shell script that encodes the given image
in base64 and uploads it to [gist](https://gist.github.com) using
the `gist(1)` commands line utility.

    $ brew install https://github.com/hecticjeff/gist-img/raw/master/extras/gist-img.rb

## Usage

To upload an image, run the following:

    $ gist-img path/to/image.png
    https://gist.github.com/95a503ec9047b45fe3e0

If everything worked correctly you'll get back a gist url, if you get a
500 error then the file you're uploading is too big.

To convert this gist url back into an image, just invoke the `gist-img`
command with the gist id (the last bit of the url) that you want to get back.

    $ gist-img 99a02182ca4467707b40
    

## Known limitations

* Can only handle files less than ~50k
* Only handles png files

## License

Licensed under the MIT license, see `MIT-LICENSE` for details.

Copyright (c) Chris Mytton
