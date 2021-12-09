# !!! CAUTION !!!
_THIS IS A FOR MY OWN FORK !!!_
1. On Pharo 10.0 EUCJPTextConverter class seems missing.
2. My fork goes like below.
   1. Change SKK-JISYO from openlab to github (because of my fav).
   2. After downloading of SKK-JISYO, convert it to UTF-8 with iconv.
3. My excuse. (and notes)
   1. I can't find the migration of EUCJPTextConverter class.
   2. I use iconv of system.
   3. I use OSSubprocess to invoke shell.
   3. A warning may occur while loading process, like 'you must resolve dependencies...'. This comes from OSSubprocess. and no harm. so just press 'Proceed'.
   4. _I test this only on my Mac and Pharo10.0._
   5. I make a temporary file named SKK-JISYO.L.utf8. First, I tried to do without a temporary file, made iconv to output to stdout, then redirect to Pharo's stream. but, iconv hanged. I couldn't solve this.

## My version
```
Metacello new
	baseline: 'Tekka';
	repository: 'github://garlic-flavor/tekka:main/repository';
	load.
```


# Overview
Tekka is a simple and mode-less Japanese input method in Squeak/Pharo environment.
It's fully implemented in Smalltalk.
Tekka uses a Japanese vocabulary dictionary SKK-JISYO.L, which is NOT included in this package because the dictionary file is distributed under GPL. Tekka's installation script will help you download it.

Tekka is mode-less in the sense that it has neither "alphabet mode", "hiragana mode" nor "katakana mode". It does NOT have an input buffer. Every character typed with the keyboard is inserted into the text. Pressing cmd-j (or ctrl-j) will turn a phrase into a japanese word. There's no distinction between "determined text" and "under conversion text". Every character you see on the screen is already a part of the text.

Tekka is deeply inspired by SKK and Sekka: their simplicity and less-modal human interfaces.
Tekka is partly supported by Japanese MEXT/JSPS KAKENHI Grant Number 23650077.

# INSTALL
It is recommended to use Japanese font by Pharo -> Settings -> Appearence -> Standard Fonts.

* Plan A: Use Iceberg to load this. Choose "default" to install Tekka, or "Tekkazan" to install extension for Google IME API.
* Plan B: 
```
Metacello new
	baseline: 'Tekka';
	repository: 'github://tomooda/tekka:main/repository';
	load.
```

# DEMO
## Tekka, converting roman letters into Japanese kanjis
[![Tekka, converting roman letters into Japanese kanjis.](http://img.youtube.com/vi/jpehr7-YRSY/0.jpg)](http://www.youtube.com/watch?v=jpehr7-YRSY)

## Tekka, converting English words into Japanese
[![Tekka, converting English words into Japanese](http://img.youtube.com/vi/3jPvuXk6LZk/0.jpg)](http://www.youtube.com/watch?v=3jPvuXk6LZk)

## Tekka, for typing math symbols
[![Tekka, for typing math symbols](http://img.youtube.com/vi/IP2t49TlE5k/0.jpg)](http://www.youtube.com/watch?v=IP2t49TlE5k)

## Tekkazan, an extension package to convert longer phrases with Google IME API
[![Tekkazan, an extension package to convert longer phrases with Google IME API](http://img.youtube.com/vi/3E3fTPEN9Yw/0.jpg)](http://www.youtube.com/watch?v=3E3fTPEN9Yw)
