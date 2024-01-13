---
title: Vim cheatsheet
content-type: notes
feed: show
date: 2023-08-16
tags:
  - coding
---

## Navigation

Ctrl + u: half screen up

Ctrl + d: half screen down

Ctrl + b: one screen up

Ctrl + f: one screen down

Cursor to first line: H

Cursor to last line: L

Cursor to the middle: M

## Search

/text_to search

Type n to go to next result, N to go back

## Buffer

Open in buffer all the files of a particular extension that contain a particular string:

```sh
vim `find . -name '*.ext' -exec grep -le 'string_in_the_file' {} \;`
```

Find and replace in all the files in the buffer:

```vim
:bufdo %s/to_replace/new_text/gce
```

g = global

e = omit errors

c = interactive