require("main")
describe("anagrama",function(  )
	it("primeiro anagrama", function()
		local primeiro = anagramas("ana")[1]
		assert.same('ana',primeiro)
	end)
end)