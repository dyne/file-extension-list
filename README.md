# Organised collection of common file extensions

This project maintains reusable collections of common file extensions
categorised per typology. It can be used by any program to quickly
distinguish between file types. It acts faster than mime/type or
libmagic recognition, but is of course less precise.

## Organisation

Each collection is a file named after a generic typology stored in `data/`:
- archiv ::  archives and disc images
- video ::  moving images
- audio ::  playable audio
- text ::  text in human languages
- code ::  code in machine languages
- image :: static images
- sheet :: spreadsheets
- slide :: presentations and slides
- web :: web developers bread and butter
- font :: typography fonts

## Code

This repository also contains source code in `render/`.

For now it is just a zsh script `build-zsh-parser` which when executed
will render a file `file-extension-parser.zsh` containing a zsh
function `file-extension-parser()` that can be sourced, takes a
filename and returns the typology of file examined according to the
archived extensions in `data/`.

This implements a fast approach to recognition of file extensions, in
case of zsh it relies on a switch case construction and two string
modifier operations that are completely native to zsh.

Other source will be include in the future (as needed or contributed)
to populate database or key/value stores or generate code in other
languages.

## Contribute

File a pull request on https://github.com/dyne/file-extension-list

