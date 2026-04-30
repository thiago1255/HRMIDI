#!/bin/sh
pandoc man/man1/hrmidi.1.md -s -t man -o man/man1/hrmidi.1
pandoc man/man5/hrmidi.5.md -s -t man -o man/man5/hrmidi.5

pandoc man/pt_BR/man1/hrmidi.1.md -s -t man -o man/pt_BR/man1/hrmidi.1
pandoc man/pt_BR/man5/hrmidi.5.md -s -t man -o man/pt_BR/man5/hrmidi.5
