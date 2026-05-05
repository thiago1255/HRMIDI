% hrmidi(1) v1 | Manual do compilador hrmidi
% thiago1255
% 2026

# NOME

hrmidi - compila um arquivo escrito em hrmidi para midi ou para outro hrmidi

# SINOPSE

**hrmidi** [*OPÇÕES*] *arquivo de entrada*

# DESCRIÇÃO

Escrito em python, transforma a linguagem hrmidi em .mid, ou em outro hrmidi com uma linguagem humana especifica.
Para mais informações sobre a linguagem ver **hrmidi(5)**.

# OPÇÕES

**-h**
:	Exibe opções somente.

**-v**
:	Exibe versão somente.

**-l** *linguagem*
:	Seleciona o formato de saída. Suportado: *pt*, *en*, *midi*. (O padrão é *midi*)

**-f** *opções de formato*
:	Somente se **-l** for configurado em uma opção que não seja *midi*:
	
	Formato das notas: n (numérico) f (fonético) a (alfabética). Padrão: n
	
	Formato de espaços: 0 (numérico) _ (linha). Isso também decide se as notas de percussão serão 1 ou |. Padrão: 0
	
	Formato das claves: m (numérico) t (textual). Padrão: t
	
	Modificadores de tempo: k (Mantém os modificadores) c (Converte os tempos). Padrão: k

**-o** *arquivo*
:	Seleciona o nome do arquivo de saída. (O padrão é o nome de arquivo de entrada, sem extensões, seguido de .mid ou .*lingua*.hrmidi)

**--stdout**
:	Direciona a saída para stdout. Desativa o **-o** em arquivo.

# EXEMPLOS

hrmidi sinfonia.hrmidi
:	Gera um arquivo midi chamado *sinfonia.mid*.

hrmidi -o symphony.hrmidi -l en -f at sinfonia.hrmidi
:	Transforma o arquivo *sinfonia.hrmidi* em outro chamado *symphony.hrmidi*, com termos em inglês, notas em notação alfabetica e claves escritas em modo textual.
