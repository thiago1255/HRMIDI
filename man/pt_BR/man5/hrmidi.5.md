% hrmidi(5) v0 | Manual da linguagem hrmidi
% thiago1255
% 2026

# SINOPSE

Linguagem de música, "Human Readable MIDI".

# DESCRIÇÃO

Usada para escrever música para ser convertida para MIDI, requer duas seções: **Cabeçalho** e **Trilhas**.

**Uso de letras:**
:	O uso de caracteres alfabéticos pode usar tanto caixa alta quanto caixa baixa, ou até mesmo misturar ambas livremente.

**Decimais:**
:	Quando aplicável, decimais podem ser escritos com ponto, virgula ou em fração.

**Separação de linhas:**
:	Deve ser feito usando `\n` padrão do Unix.

**Formatação:**
:	Para melhor formatação, espaços, tabs e pontos-e-vírgulas podem ser usados livremente para separar termos. Linhas vazias também podem ser usadas no documento.

**Comentários:**
:	Podem ser escritos no final de uma linha usando `//` seguido do texto que será ignorado pelo compilador.

# CABEÇALHO

Linhas que definem elementos universais para todo o arquivo, podem ser escritos em qualquer parte.

**BPM** *número_decimal_ou_inteiro* (Obrigatório)
:	Define os batimentos por minuto da música.

**LANG** *linguagem* (Obrigatório)
:	Linguagem humana em que as claves e instrumentos serão nomeados.

	Disponíveis: en, pt.

**VER** *versão* [Opcional]
:	Define a versão da linguagem, poderá ter usos futuros por motivos de compatibilidade.

*DODECA** [Opcional]
:	Ativa o modo dodecafonico para trilhas abaixo.

# TRILHA

Define uma trilha de um instrumento, deve ser declarada começando com a clave.

Os termos são escritos com a letra + underline + nome do instrumento, ex: `C_VIOLINO`.

**C** *clave* (Obrigatório)
:	Define a clave da trilha. Pode ser escrita com número inteiro ou em forma de texto:
	
	Claves disponíveis: Fa = -1, Sol = 0, Do = 1. Outros números inteiros podem usados além desses. 

**N** *notas* (Obrigatório)
:	Define cada nota e pausa da trilha, cada uma deve ser separada seguindo a *formatação* descrita na seção **DESCRIÇÃO**.
	
	Pausas podem ser escritas usando `0` ou `_`.
	
	Notas podem ser escritas numericamente, foneticamente ou alfabeticamente: do = 1 = C, re = 2 = D, mi = 3 = E, fa = 4 = F, sol = 5 = G, la = 6 = A, si = 7 = B = H.
	
	Para definir sustenido ou bemol, deve-se usar `#` ou `b` (ou os simbolos especiais `♯` ou `♭`) respectivamente após a nota, sem separação.
	
	Para escrever a nota uma clave acima ou abaixo, usa-se `+` ou `-` (podendo ser cumulativo) respectivamente antes da nota, sem separação.
	
	Com o modo dodecafonico ligado, as notas númericas serão lidas de 1-12, escrever números com sustenido/bemol resultará em eles serem interpretados no modo númerico citado anteriormente (não dodecafonico).

**T** *tempo* (Obrigatório)
:	Define o tempo de cada nota ou pausa da linha das notas - quantas batidas ela vale. Deve ter a mesma quantidade de itens que a linha de notas.

	Cada tempo pode ser representado com um número inteiro ou decimal.

**M** *número* [Opcional]
:	Modificador do tempo, multiplica-se a velocidade pelo número aqui declarado. Ex: Mudar para "2" vai fazer os tempos "1" virarem "0,5".

# INSTRUMENTOS

Os instrumentos disponiveis em midi são:

1. piano
2. piano-brilhante
3. piano-eletrico-acustico
4. piano-honky-tonk
5. piano-eletrico-rhodes
6. piano-eletrico-chorused
7. cravo
8. clavineta
9. celesta
10. glockenspiel
11. caixa-musical
12. vibrafone
13. marimba
14. xilofone
15. sinos-tubulares
16. dulcimer
17. orgao-hammond
18. orgao-percussivo
19. orgao-rock
20. orgao-igreja
21. orgao-palheta
22. acordeao
23. harmonica
24. bandoneao
25. guitarra-nylon
26. guitarra-aco
27. guitarra-eletrica-jazz
28. guitarra-eletrica-limpa
29. guitarra-eletrica-abafada
30. guitarra-saturacao
31. guitarra-distorcao
32. guitarra-harmonicos
33. baixo
34. baixo-eletrico-dedilhado
35. baixo-eletrico-palheta
36. baixo-sem-trastes
37. baixo-percutido-1
38. baixo-percutido-2
39. baixo-sintetico-1
40. baixo-sintetico-2
41. violino
42. viola
43. violoncelo
44. contrabaixo
45. cordas-tremolo
46. cordas-pizzicato
47. harpa
48. timpanos
49. cordas-orquestra
50. cordas-orquestra-devagar
51. cordas-sinteticas-1
52. cordas-sinteticas-2
53. coral-ah
54. voz-oh
55. voz-sintetica
56. batida-orquestral
57. trompete
58. trombone
59. tuba
60. trompete-abafado
61. trompa
62. metais
63. metais-sinteticos-1
64. metais-sinteticos-2
65. saxofone-soprano
66. saxofone-alto
67. saxofone-tenor
68. saxofone-baritono
69. oboe
70. corno-ingles
71. fagote
72. clarinete
73. flautim
74. flauta-transversal
75. flauta-doce
76. flauta-de-pa
77. garrafa
78. shakuhachi
79. apito
80. ocarina
81. solo-quadrada
82. solo-dente-serra
83. solo-caliope
84. solo-chiff
85. solo-charang
86. solo-voz
87. solo-quintas
88. solo-baixo-solo
89. fundo-nova-era
90. fundo-morno
91. fundo-polissintetico
92. fundo-coral
93. fundo-vidro-arcado
94. fundo-metalico
95. fundo-halo
96. fundo-varredura
97. fx-chuva
98. fx-trilha-sonora
99. fx-cristal
100. fx-atmosfera
101. fx-brilhos
102. fx-goblins
103. fx-ecos
104. fx-ficcao-cientifica
105. sitar
106. banjo
107. shamisen
108. koto
109. kalimba
110. gaita-de-foles
111. fiddle
112. shehnai
113. sininho
114. agogo
115. tambor-aco
116. bloco-madeira
117. tambor-taiko
118. tambor-tom
119. tambor-sintetizado
120. pratos-reverso
121. guitarra-deslizo
122. respiracao
123. praia
124. passaro
125. telefone-tocando
126. helicoptero
127. aplausos
128. tiro

# VER TAMBÉM

**hrmidi(1)** - compilador da linguagem hrmidi.
