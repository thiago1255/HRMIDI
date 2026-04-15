% hrmidi(5) v0 | Manual of the hrmidi language
% thiago1255
% 2026

# SYNOPSIS

Language for music, "Human Readable MIDI".

# DESCRIPTION

Used to write music to be converted to MIDI, requires two sections **Head** and **Tracks**.

**Use of letters:**
:	The use of alphabetic characters can use either lowercase or uppercase, or even mix both freely.

**Decimals:**
:	When applicable, decimals can be written with dots, commas or in fraction mode.

**Line split:**
:	Must be done using the Unix's standard `\n`.

**Formatting:**
:	For better formatting, spaces, tabs and semicolons can be freely used to split terms. Empty lines can be also used on the document.

**Comments:**
:	Can be written in the end of a line using `//` followed by the text to be ignored by the compiler.

# HEAD

Sets global settings for the entire file.

**BPM** *decimal_or_integer_number* (Mandatory)
:	Sets the beats per minute of the music.

**LANG** *language* (Mandatory)
:	Human language where instruments and clefs will be written.

	Available: en, pt.

**VER** *version* [Optional]
:	Sets the version of the language, may have uses in the future for compatibility.

# TRACK

Sets a track for an instrument, the declaration must start with the clef.

The terms are written with the letter + underline + instrument name, ex: `C_PIANO`.

The currently implemented instruments are: piano, violino.

**C** *clef* (Mandatory)
:	Sets the clef of this track. Can be written with number or using textual mode:
	
	Available clefs: Bass = -1, Treble = 0, Alto = Tenor = 1. Other integer numbers can be used besides those. 

**N** *keys* (Mandatory)
:	Sets each key and break of the track, each one must be split using the *Formatting* described on section **DESCRIPTION**.
	
	Breaks must be declared using `0` or `_`.
	
	Keys can be written phonetically, numerically or alphabetically: do = 1 = C, re = 2 = D, mi = 3 = E, fa = 4 = F, sol = 5 = G, la = 6 = A, si = 7 = B = H.
	
	To set sharp or flat, must use `#` or `b` after the key, without split.
	
	To write the key one clef above or below, must use `+` or `-` (being cumulative) before the key, without split.

**T** *time* (Mandatory)
:	Sets the duration of each key or break from the keys line - how many beats. Must have the same amount of items as the keys line.

	Each duration can be written with decimal or integer numbers.

**M** *number* [Optional]
:	Time modifier for the track, each duration is divided by this number.

# SEE ALSO:

**hrmidi(1)** - compiler for the hrmidi language.
