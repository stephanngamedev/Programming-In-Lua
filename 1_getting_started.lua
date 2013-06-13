--para executar esse arquivo execute o comando 'lua 1_getting_started.lua'

--para abrir o interpretador lua execute o comando 'lua'

--abrir o interpretador depois da execução de um arquivo: lua -i arquivo.lua

--para executar um arquivo dentro do interpretador: dofile('arquivo.lua')

--para escrever código diretamente na linha de comando: lua -e "código lua aqui"

--###[[ 1 Getting Started ]]###--

--imprime no console
print 'Hello World'

--exemplo mais avançado
function fatorial_de( n )
	if n == 0 then
		return 1
	else
		return n * fatorial_de( n - 1 )
	end
end

print( fatorial_de( 5 ) )

--###[[ 1.1 Chunks ]]###--

--Chunk nada mais é que uma sequência de comandos

a = 2 + 3 c = 2 d = 37 * 1

--Não é necessário ponto e vírgula no final de cada comando

--Um chunk pode ser um único comando ou uma mistura de comandos e definições de funções

--###[[ 1.2 Convenções léxicas ]]###--

--[[
Identificadores pode ter letras, números e underscores, não podendo começar com número.
	i
	j
	i10
	_ij
	aSomewhatLongName _INPUT
]]

--Lua é case sensitive

--[[
Comentários de uma linha começam com -- e comentários de múltiplas linhas 
são demarcados com --[[ e ]]
--]]

--###[[ 1.3 Variáveis globais ]]###--

--Variáveis globais não necessitam de declarações. Se uma variável global não inicializada tem o valor nil

--Se é atribuído nil à uma variável global, Lua se comporta como se a variável nunca tivesse sido utilizada e
--o endereço de memória dessa variável está disponível para o garbage collector

