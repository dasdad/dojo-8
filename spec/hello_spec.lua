require("main")
describe("anagramas",function(  )
	it("anagrama de um caractere", function()
		local lista_anagramas = anagramas("a")
		assert.same({'a'}, lista_anagramas)
	end)

	it("anagrama de ab", function()
		local lista_anagramas = anagramas("ab")
		assert.same({'ab', 'ba'}, lista_anagramas)
	end)

	it("anagrama de ba", function()
		local lista_anagramas = anagramas("ba")
		assert.same({'ba', 'ab'}, lista_anagramas)
	end)

	it("anagrama de ca", function()
		local lista_anagramas = anagramas("ca")
		assert.same({'ca', 'ac'}, lista_anagramas)
	end)

	it("anagrama de duas letras iguais", function()
		local lista_anagramas = anagramas("aa")
		assert.same({'aa'}, lista_anagramas)
	end)

	it("anagrama de três letras iguais", function()
		local lista_anagramas = anagramas("aaa")
		assert.same({'aaa'}, lista_anagramas)
	end)

	it("anagrama de aab", function()
		local lista_anagramas = anagramas("aab")
		assert.same({'baa', 'aab', 'aba'}, lista_anagramas)
	end)

	
	it("anagrama de aaab", function()
		local lista_anagramas = anagramas("aaab")
		assert.same({'abaa', 'baaa', 'aaba','aaab'}, lista_anagramas)
	end)
end)
