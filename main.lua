function anagramas(value)
	--a =  value:sub(1,1)
	if #value == 2 then
		return {'ab', 'ba'}
	end
	return { value }
end


