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

**For full technical description check the manual pages.**

# The program:
For now there will be only the `hrmidi` command to compile or convert to another language/type.
