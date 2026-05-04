🌐: [Em Português 🇧🇷](README.pt-BR.md)
# HRMIDI
Human Readable MIDI, to easily write music to be converted to `.mid`.

*If markdown can write formated text, why can't HRMIDI write music ?*

# The language:
In the top of each music, must be declared some global details:
```
BPM 100 // The speed of the music
LANG en // The human language used to call the instruments and clefs (not all supported at the moment)
```
The instruments can be declared like that:
```
C_PIANO bass				// Sets the clef of this section
N_PIANO do re mi fa _ sol	// Declares the notes
T_PIANO 1  2  1  2  4 0.5	// Declares the time of each note

C_VIOLIN treble
N_VIOLIN 1 2 3 4 0 5	// Many ways to write notes can be used
T_VIOLIN 1 2 1 2 4 0,5	// For accesibility reasons, both . and , can be used on decimals
M_VIOLIN 2				// Modifier, here means twice faster as others
```
The language have some rules:
- Comments can be written using `//` at the ending of the line;
- The terms/keys must be split with *space* ` `, *tabs* `	` and/or semicolons `;`. The number used between two different keys does not matter, this is for formating reasons;
- Lines must be split using `\n` (new line);
- Empty lines will be ignored, you can use them for formating.
- Keys/terms can be written in lowercase or uppercase, and even mix both.

**For full technical description check the [manual pages](man/man5/hrmidi.5.md).**

# The program:
For now there will be only the `hrmidi` command to compile or convert to another language/type.

There is no need to install or compile, you can simply run the script `src/bin/hrmidi`.
In order to install the *man pages*, run the script `convert-man-pages.sh` before.

Check the [manual](man/man1/hrmidi.1.md) for more details.

# Todo:
### Version 1:
- Add alternative ways to write notes (sharp and flat when normal notes could be used)
- ~~Add checks for clefs and notes limits~~
- Add limit of 14 instruments, merge channels with same instrument
- ~~Add all instruments~~ (+ a new way to write for percussion)
### Version 2:
- Add support for pages (when one end, the other begins)
- Avoid floating point (+ add constant for ticks)
### Version 3:
- Simultaneous notes with `(note note ...)`
- Allow to write many `N_` and `T_` at same tracks (make all `N_` follow the `T_` below ?)
- Maybe alternative syntaxes with `[Note,Beats]`
