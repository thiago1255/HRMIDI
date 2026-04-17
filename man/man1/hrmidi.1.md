% hrmidi(1) v0 | Manual of hrmidi compiler
% thiago1255
% 2026

# NAME

hrmidi - compiles a file writen in hrmidi to midi or another hrmidi

# SINOPSIS

**hrmidi** [*OPTIONS*] *input file*

# DESCRIPTION

Writen in python, compiles hrmidi language into .mid, or another hrmidi in another specific human language.
For more info on the language see **hrmidi(5)**.

# OPTIONS

**-h**
:	Shows help and quit.

**-v**
:	Shows version and quit.

**-l** *language*
:	Select output format. Supported: *pt*, *en*, *midi*. (Default: *midi*)

**-f** *format options*
:	Only if **-l**  is set for a option that is not *midi*:
	
	Keys format: n (numeric) f (fonetic) a (alfabetic). Default: n
	
	Breaks format: 0 (numeric) _ (underline). Default: 0
	
	Clefs format: m (numeric) t (text). Default: t
	
	Time modifiers: k (keep modifiers) c (converts the times). Default: k

**-o** *file*
:	Sets the output file name. (The standard is input file name, withowt extensions, followed with .mid or .hrmidi)

**--stdout**
:	Redirects output to stdout. Disables **-o** to file.

# EXAMPLES

hrmidi symphony.hrmidi
:	Generates a midi file named *symphony.mid*.

hrmidi -o sinfonia.hrmidi -l pt -f at symphony.hrmidi
:	Transforms the file *symphony.hrmidi* in another called *sinfonia.hrmidi*, with terms in portuguese, keys in alphabetic notation and clefs writen in textual mode.
