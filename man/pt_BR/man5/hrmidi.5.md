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

Define elementos universais para o resto do arquivo.

**BPM** *número_decimal_ou_inteiro* (Obrigatório)
:	Define os batimentos por minuto da música.

**LANG** *linguagem* (Obrigatório)
:	Linguagem humana em que as claves e instrumentos serão nomeados.

	Disponíveis: en, pt.

**VER** *versão* [Opcional]
:	Define a versão da linguagem, poderá ter usos futuros por motivos de compatibilidade.

# TRILHA

Define uma trilha de um instrumento, deve ser declarada começando com a clave.

Os termos são escritos com a letra + underline + nome do instrumento, ex: `C_VIOLINO`.

Por ora os instrumentos disponíveis são: piano, violino.

**C** *clave* (Obrigatório)
:	Define a clave da trilha. Pode ser escrita com número inteiro ou em forma de texto:
	
	Claves disponíveis: Fa = -1, Sol = 0, Do = 1. Outros números inteiros podem usados além desses. 

**N** *notas* (Obrigatório)
:	Define cada nota e pausa da trilha, cada uma deve ser separada seguindo a *formatação* descrita na seção **DESCRIÇÃO**.
	
	Pausas podem ser escritas usando `0` ou `_`.
	
	Notas podem ser escritas numericamente, foneticamente ou alfabeticamente: do = 1 = C, re = 2 = D, mi = 3 = E, fa = 4 = F, sol = 5 = G, la = 6 = A, si = 7 = B = H.
	
	Para definir sustenido ou bemol, deve-se usar `#` ou `b` respectivamente após a nota, sem separação.
	
	Para escrever a nota uma clave acima ou abaixo, usa-se `+` ou `-` (podendo ser cumulativo) respectivamente antes da nota, sem separação.

**T** *tempo* (Obrigatório)
:	Define o tempo de cada nota ou pausa da linha das notas - quantas batidas ela vale. Deve ter a mesma quantidade de itens que a linha de notas.

	Cada tempo pode ser representado com um número inteiro ou decimal.

**M** *número* [Opcional]
:	Modificador do tempo, multiplica-se a velocidade pelo número aqui declarado. Ex: Mudar para "2" vai fazer os tempos "1" virarem "0,5".

# VER TAMBÉM:

**hrmidi(1)** - compilador da linguagem hrmidi.
