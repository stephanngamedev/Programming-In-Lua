--1.1 Escreva uma funcão que calcule o fatorial de um número
function fatorial_de( n )
	if n < 0 then
		print 'ERRO: O número deve ser maior que 0'
		return 'NaN'
	elseif n == 0 then
		return 1 
	else
		return n * fatorial_de( n - 1 )
	end
end

print( 'Fatorial de 5: ' .. fatorial_de( 5 ) )
print( 'Fatorial de -2: ' .. fatorial_de( -2 ) )

--1.5 Escreva uma funcao que solicite e imprima um nome
function solicita_e_imprime_nome()
	print 'Forneça seu nome: '
	nome = io.read()
	print( 'Seu nome é ' .. nome )
end

solicita_e_imprime_nome()