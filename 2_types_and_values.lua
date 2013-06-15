--###[[ 2 Types and Values ]]###---

-- Lua  é uma linguagem dinamicamente tipada.

-- Existem 8 tipos básicos em Lua
--nil - diferente de qualquer valor em lua, é a ausência de um valor útil
--boolean - false e nil representam false e qualquer outro valor representa true
--number - representa os numeros reais de precisão duplaa
--string - são imutáveis e representam uma sequência de caracteres,
--userdata - armazena dados da linguagem C em variáveis Lua
--function - são valores de primeira classe, ou seja, é possível manipulá-las como qualquer outro valor
--thread
--table - implementam arrays associativos

---###[[ 2.4 Strings ]]###---

--a função utilizada para saber o tipo de uma variável: type( arg )
type( true )
type( 'texto' )

--a função para saber o tamanho de uma string
texto = 'Novo Texto'
print( #texto ) --imprime 10



--para escrever string longas

pagina = [[
	<html>
		<head>
			<title>Título "Teste"</title>
		</head>
		<body>
			<a href="http://lua.org">Lua</a>
		</body>
	</html>
]]

print( pagina )

--Lua converte automáticamente string para número quando uma string é envolvida com um operador numérico

print( '10' + 1 ) -- imprime 11
-- print( 'oi' + 1 ) -- ERROR

--Concatenador de strings em Lua

print( 'Stephann' .. 'Vasconcelos' )

--Converter string para números

print( tonumber( '32' ) ) -- imprime 32
print( tonumber( 'hello' ) ) -- imprime nil pois não foi possível fazer a conversão

--Converter números para string

print( tostring( 32 ) ) -- imprime 32

--### [[ 2.5 Tables ]] ### --

--Tables podem ser indexados com números, strings e qualquer outro valor diferente de nil

--Tables são as únicas e principais estrutura de dados em Lua.

--Tables podem representar arrays, sets, records e várias outras estruturas.

a = {} -- declarando uma table vazia
a[ 1 ] = 3 
a[ "amarelo" ] = 'yellow'
a[ true ] = 'Verdadeiro'
a[ false ] = 'Falso'

--Tables são sempre anônimas
a = {}
a[ 'x' ] = 10
b = a
b[ 'x' ] = 20
print( a[ 'x' ] ) -- imprime 20
a = nil -- b continua apontando pra table
b = nil -- agora sem referências para a table

--Tables armanezam valores de diferentes tipos

--Açucar sintático para Tables
a = {}
a[ 'x' ] = 'teste'
print( a.x ) -- imprime teste
a.x = 32
print( a[ 'x' ] ) -- imprime 32

--Table como array
a = {}

for i = 1, 10 do 
	a[ i ] = i
end 

--É possível iniciar uma table a partir de qualquer índice, mas em Lua é costumeiro utilizar o 1 como primeira posição

--###[[ 2.6 Functions ]]###--

--Funções em Lua podem retornar outras funções ou ser passadas como parâmetros para outras funções

--Lua podem chamar funções escritas em Lua e escritas em C

