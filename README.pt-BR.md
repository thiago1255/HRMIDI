# HRMIDI
"Human Readable MIDI" Para escrever música em formato de texto simples e converter para `.mid`.

# A linguagem:
No cabeçalho de cada música definem-se alguns detalhes essenciais:
```
BPM 100 // A velocidade da música
LANG pt // Em qual linguagem humana estarão os nomes dos instrumentos e claves
```
As trilhas podem ser declaras assim:
```
C_PIANO sol					// A clave usada nessa trilha
N_PIANO do re mi fa _ sol	// As notas e silêncios da trilha
T_PIANO 1  2  1  2  4 0.5	// O tempo de cada nota

C_VIOLINO fa
N_VIOLINO 1 2 3 4 0 5	// Pode-se usar modos diferentes de escrever as notas
T_VIOLINO 1 2 1 2 4 0,5	// Por motivos de acessibilidade tanto . quanto , podem ser usados em decimais
M_VIOLINO 2				// Modificador do tempo, aqui as notas ficarão 2x mais rápidas
```
A linguagem tem algumas regras:
- Comentários podem ser escritos usando `//` no fim das linhas;
- Os termos/notas devem ser separados usando *espaço* ` `, *tab* `	` e/ou ponto-e-vírgula `;`. Para facilitar a formatação, o número de caractéres é livre;
- As linhas devem separadas usando `\n` (nova linha);
- Pode-se usar linhas vazias para formatação.
- Os termos/notas podem ser escritos em caixa alta, baixa ou ambas.

**Para detalhes técnicos completos, verifique o [manual](man/pt_BR/man5/hrmidi.5.md) da linguagem.**

# O programa:
Por ora, haverá apenas o comando `hrmidi` para compilar, ou para converter para outra linguagem.

Veja o [manual](man/pt_BR/man1/hrmidi.1.md) para mais detalhes.
