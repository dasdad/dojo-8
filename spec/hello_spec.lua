require("main")
describe("anagramas",function(  )
	it("anagrama de um caractere", function()
		local lista_anagramas = anagramas("a")
		assert.same({'a'}, lista_anagramas)
	end)
	it("anagrama de 2 caracteres", function()
		local lista_anagramas = anagramas("ab")
		assert.same({'ab', 'ba'}, lista_anagramas)
	end)
end)