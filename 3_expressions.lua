--[[ Expressions ]]--

--###[[ 3.1 Operadores aritiméticos ]]###--
-- +  -  *  /  ^  %

--###[ 3.2 Operadores relacionais ]###--
-- <  >  <=  >=  ==  ~=

--###[[ 3.3 Operadores lógicos ]]###--
-- and  or  not

a = 3
b = nil
c = a or b -- c = 3

--###[ 3.4 Concatenação ]###--
-- ..
a = "hello"
print( a .. ' world ' .. 000 ) -- imprime 'hello world 0'

--###[[ 3.5 Operador de tamanho ]]###--
-- #
-- funciona em strings e em tables

texto = 'hello world'
array = { 2, 3 , 'teste' }
print( #texto, #array )  -- imprime 11 e 3

--##[[ 3.6 Ordem de precedência ]]##--
-- ^
-- not  #  -(negação)
-- *  /  %
-- +  -
-- ..
-- >  <  >=  <=  ~=  ==
-- and
-- or

--##[[ 3.7 Construtores de tables ]]##
-- {}
minha_table = { 3, 7, true, 'texto' } 
traducao = {
	yellow = 'amarelo',
	red = 'vermelho'
}
