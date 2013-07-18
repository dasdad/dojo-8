function anagramas(value)
	--a =  value:sub(1,1)
	if #value == 2 then
		return {value, value:sub(2,2)..value:sub(1,1)}
	end
	return { value }
end


