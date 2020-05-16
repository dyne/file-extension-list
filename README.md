# Organised collection of common file extensions

This project maintains reusable collections of common file extensions
categorised per typology. It can be used by any program to quickly
distinguish between file types. It acts faster than mime/type or
libmagic recognition, but is of course less precise.

## Organisation

Each category is a file named after a generic typology stored in `data/`:
- archiv ::  archives and disc images
- audio ::  playable audio
- book :: electronic books
- code ::  code in machine languages
- font :: typography fonts
- image :: static images
- sheet :: spreadsheets
- slide :: presentations and slides
- text ::  text in human languages
- video ::  moving images
- web :: web developers bread and butter

Inside each category file there is a file extension string on each new
line.

It is up to you to build a simple parser that checks which category
file contains the extension you are checking.

Some extensions (for instance `html`, see #10 and #11) may belong to
both categories `code` or `web`. In these cases any extra occurrance
of the extension will be followed by space and a `%` on the same line
to mark it as duplicate of another categorisation that took priority.

To establish the category of a single file one can simply ignore all
duplicate extensions containing `%` on the same line. Duplicates may
be useful to establish the category of a directory containing multiple
files [by means of fuzzy logic](https://github.com/dyne/file-extension-list/pull/10#issuecomment-529363535).

## Code

This repository also contains scripts in `render/`.

For now it is just a shell script `build-zsh-parser` which renders a
file `file-extension-parser.zsh` containing a zsh function
`file-extension-parser()`; This function can then be called with a
filename as argument and it will return its category according to the
archived extensions in `data/`; It relies on a switch case
construction and two string modifier operations that are completely
native to zsh.

Other source will be include in the future (as needed or contributed)
to populate database or key/value stores or generate code in other
languages.

To contribute please file a pull request on
https://github.com/dyne/file-extension-list/pulls

## Usage

File-extension-list is used by the software application
[harvest](https://github.com/dyne/harvest) for fast categorization of
large amounts of directories containing multiple file types.

You are welcome to let us know if you are using it too.

## License

File-extension-list is maintained by Denis @Jaromil Roio

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>
