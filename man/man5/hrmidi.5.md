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

Lines that sets global settings for the entire file, can be placed anywhere on the file.

**BPM** *decimal_or_integer_number* (Mandatory)
:	Sets the beats per minute of the music.

**LANG** *language* (Mandatory)
:	Human language where instruments and clefs will be written.

	Available: en, pt.

**VER** *version* [Optional]
:	Sets the version of the language, may have uses in the future for compatibility.

**DODECA** [Optional]
:	Enables the dodecaphonic mode for tracks below it.

# TRACK

Sets a track for an instrument, the declaration must start with the clef.

The terms are written with the letter + underline + instrument name, ex: `C_PIANO`.

**C** *clef* (Mandatory)
:	Sets the clef of this track. Can be written with number or using textual mode:
	
	Available clefs: Bass = -1, Treble = 0, Alto = Tenor = 1. Other integer numbers can be used besides those, the limit is from -5 to 5.

**N** *keys* (Mandatory)
:	Sets each key and break of the track, each one must be split using the *Formatting* described on section **DESCRIPTION**.
	
	Breaks must be declared using `0` or `_`.
	
	Keys can be written phonetically, numerically or alphabetically: do = 1 = C, re = 2 = D, mi = 3 = E, fa = 4 = F, sol = 5 = G, la = 6 = A, si = 7 = B = H.
	
	To set sharp or flat, must use `#` or `b` (or use the special symbols `♯` or `♭`) after the key, without split. Remember that this can be an alternative ways to write "normal" notes, some examples: `Mi♯ = Fa`, `Do♭ = -Si`, `Si♯ = +Do`, etc.
	
	To write the key one clef above or below, must use `+` or `-` (being cumulative) before the key, without split.
	
	With dodecaphonic mode enabled, numbers notes will be read from 1-12, an attemp to write sharp/flat on a number will result in being read as the "numeric" (non dodecaphonic) mode previously cited.
	
	They keys are limited from 0 to 127, this is, from "Do at clef -5" to "Sol at clef 5"

**T** *time* (Mandatory)
:	Sets the duration of each key or break from the keys line - how many beats. Must have the same amount of items as the keys line.

	Each duration can be written with decimal or integer numbers.

**M** *number* [Optional]
:	Time modifier for the track, each duration is divided by this number.

# INSTRUMENTS

The available instruments on midi are:

1. piano
2. piano-bright
3. piano-electric-acoustic
4. piano-honky-tonk
5. piano-electric-rhodes
6. piano-electric-chorused
7. harpsichord
8. clavinet
9. celesta
10. glockenspiel
11. music-box
12. vibraphone
13. marimba
14. xylophone
15. tubular-bells
16. dulcimer
17. organ-drawbar
18. organ-percussive
19. organ-rock
20. organ-church
21. organ-reed
22. accordion
23. harmonica
24. accordion-tango
25. guitar-nylon
26. guitar-steel
27. guitar-electric-jazz
28. guitar-electric-clean
29. guitar-electric-muted
30. guitar-overdriven
31. guitar-distortion
32. guitar-harmonics
33. bass
34. bass-electric-finger
35. bass-electric-pick
36. bass-fretless
37. bass-slap-1
38. bass-slap-2
39. bass-synth-1
40. bass-synth-2
41. violin
42. viola
43. cello
44. contrabass
45. strings-tremolo
46. strings-pizzicato
47. orchestral-harp
48. timpani
49. strings-ensemble
50. strings-ensemble-slow
51. strings-synth-1
52. strings-synth-2
53. choir-ah
54. voice-oh
55. voice-synth
56. orchestra-hit
57. trumpet
58. trombone
59. tuba
60. trumpet-muted
61. french-horn
62. brass-section
63. brass-synth-1
64. brass-synth-2
65. sax-soprano
66. sax-alto
67. sax-tenor
68. sax-baritone
69. oboe
70. english-horn
71. bassoon
72. clarinet
73. piccolo
74. flute
75. recorder
76. flute-pan
77. blown-bottle
78. shakuhachi
79. whistle
80. ocarina
81. lead-square
82. lead-sawtooth
83. lead-calliope
84. lead-chiff
85. lead-charang
86. lead-voice
87. lead-fifths
88. lead-bass-lead
89. pad-new-age
90. pad-warm
91. pad-polysynth
92. pad-choir
93. pad-bowed-glass
94. pad-metallic
95. pad-halo
96. pad-sweep
97. fx-rain
98. fx-soundtrack
99. fx-crystal
100. fx-atmosphere
101. fx-brightness
102. fx-goblins
103. fx-echoes
104. fx-sci-fi
105. sitar
106. banjo
107. shamisen
108. koto
109. kalimba
110. bag-pipe
111. fiddle
112. shehnai
113. bell-tinkle
114. agogo
115. drum-steel
116. woodblock
117. drum-taiko
118. drum-tom
119. drum-synth
120. cymbal-reverse
121. guitar-fret
122. breath
123. seashore
124. bird
125. telephone-ring
126. helicopter
127. applause
128. gunshot

You can only use the maximum of 15 of the instruments above in the same file, and any number of percussions.

To use percussion, you must use the `percussion` normally as instrument, but specify which one where the clef would be written, the available are:



# SEE ALSO

**hrmidi(1)** - compiler for the hrmidi language.
