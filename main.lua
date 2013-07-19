function anagramas(value)
	--a =  value:sub(1,1)
	if #value == 2 then
		if value:sub(1,1) == value:sub(2,2) then
			return { value }
		end
		return {value, value:sub(2,2)..value:sub(1,1)}
	end

	if #value >= 3 then
		local fim = value:sub(#value,#value)
		local resto = value:sub(1,#value-1)
		local navarro = {}
		local resultado = {}

		for i=1,#value do
			navarro[resto:sub(1,i-1)..fim..resto:sub(i,#resto)] = ""
		end
		
		for chave,valor in pairs(navarro) do
			resultado[#resultado+1] = chave
		end

		return resultado
	end

	return { value }
end


