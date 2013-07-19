function anagramas(value)
	local fim = value:sub(#value,#value)
	local resto = value:sub(1,#value-1)
	local navarro = {}
	local resultado = {}

	for i=1,#value do
		navarro[resto:sub(1,i-1)..fim..resto:sub(i,#resto)] = ""
	end
	
	if #resto == 0 then
		return {fim}
	end

	local anagramas_do_resto = anagramas(resto)
	
	for chave,valor in pairs(navarro) do
		resultado[#resultado+1] = chave
	end

	return resultado
end


