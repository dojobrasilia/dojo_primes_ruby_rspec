def generate(n)
	primos = (2..n).to_a
	primos.each do |m|
		for i in (2..(n/m)) do
			primos.delete(i*m)  
		end
	end
	primos
end
