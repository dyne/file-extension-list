<!--
SPDX-FileCopyrightText: 2020-2021 Dyne.org foundation <info@dyne.org>
SPDX-License-Identifier: CC0-1.0
-->

# Organised collection of common file extensions

[![License: Unlicense](
    https://img.shields.io/badge/License-Unlicense-blue.svg)](
    https://unlicense.org/)
[![REUSE status](
    https://api.reuse.software/badge/github.com/dyne/file-extension-list)](
    https://api.reuse.software/info/github.com/dyne/file-extension-list)

## TL;DR

- [List organized by extension, JSON format](pub/extensions.json)
- [List organized by category, JSON format](pub/categories.json)

## Introduction

This project maintains reusable collections of common file extensions
categorised per typology. It can be used by any program to quickly
distinguish between file types.

Such an approach works much faster than recognition by mime/type or using
[libmagic](
https://www.commandlinux.com/man-page/man3/libmagic.3.html), but is of
course less precise.

The raw data is under [data](data), while generated formats and tools
can be found on the [projects pages](
https://github.com/dyne/file-extension-list).

## Organisation

Each category is a file named after a generic typology stored in `data/`:

| file.csv | description |
| --- | ---------- |
| archive | archives and disc images |
| audio | playable audio |
| book | electronic books |
| code | code in machine languages |
| exec | executable binaries |
| font | typography fonts |
| image | static images |
| sheet | spreadsheets |
| slide | presentations and slides |
| text | text in human languages |
| video | moving images |
| web | web developers bread and butter |

Inside each category file there is a file extension string
in the first column.
This collection is not complete...
and knowing how standards go: it will never be.
[We welcome your contribution](
https://github.com/dyne/file-extension-list/pulls).

Some extensions (for instance `html`, see #10 and #11)
may belong to more than one category:
`code` or `web`.
In these cases, any extra occurrence of the extension
will be marked `%` in the second column,
to mark it as duplicate of another categorisation
that took priority.

To establish the category of a single file
one can simply ignore all duplicate extensions
(those containing `%` in the second column).
Duplicates may be useful to establish the category of a directory
containing multiple files [by means of fuzzy logic](
https://github.com/dyne/file-extension-list/pull/10#issuecomment-529363535).

## Quick start

The current data is available for download in JSON format:

- [List organized by extension, JSON format](pub/extensions.json)
- [List organized by category, JSON format](pub/categories.json)

To change extensions and categories one can edit them inside the
`data/` directory and then use `make` to render new JSON files:

```
Usage:
  make <target>

General
  help             Display this help.
  list             list all categories and extensions
  dups             list all duplicate extensions present in more categories
  json-categories  build the json dictionary for { category: [ extensions.. ], .. }
  json-extensions  build the json dictionary for { extension: [ category ], .. }
  release          update the local render in pub/ for release
```

Launching `make list` will print on your terminal all currently known
extensions by category, for example:

```
archive: 7z a apk ar bz2 cab cpio deb dmg egg gz iso jar lha mar pea rar rpm s7z shar tar tbz2 tgz tlz war whl xpi zip zipx xz pak
audio: aac aiff ape au flac gsm it m3u m4a mid mod mp3 mpa pls ra s3m sid wav wma xm
book: mobi epub azw1 azw3 azw4 azw6 azw cbr cbz
code: 1.ada 2.ada ada adb ads asm bas bash bat c c++ cbl cc class clj cob cpp cs csh cxx d diff e el f f77 f90 fish for fth ftn go groovy h hh hpp hs html htm hxx java js jsx jsp ksh kt lhs lisp lua m m4 nim patch php pl po pp py r rb rs s scala sh swg swift v vb vcxproj xcodeproj xml zsh
exec: exe msi bin command sh bat crx bash csh fish ksh zsh
font: eot otf ttf woff woff2
image: 3dm 3ds max bmp dds gif jpg jpeg png psd xcf tga thm tif tiff yuv ai eps ps svg dwg dxf gpx kml kmz webp
sheet: ods xls xlsx csv ics vcf
slide: ppt odp
text: doc docx ebook log md msg odt org pages pdf rtf rst tex txt wpd wps
video: 3g2 3gp aaf asf avchd avi drc flv m2v m4p m4v mkv mng mov mp2 mp4 mpe mpeg mpg mpv mxf nsv ogg ogv ogm qt rm rmvb roq srt svi vob webm wmv yuv
web: html htm css js jsx less scss wasm php
```

## Code

You are meant to write your own code to parse file-extension-list.

This repository contains some example code in [./render](render).

To contribute, please file a pull request on
<https://github.com/dyne/file-extension-list/pulls>

## Usage

File-extension-list is used by the software application
[harvest](https://github.com/dyne/harvest)
for fast categorization of large amounts of directories
containing multiple file types.

You are welcome to let us know if you are using it too.

## License

File-extension-list is maintained by [Jaromil](/jaromil), [Puria](/puria) and [Hoijui](/hoijui).

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
