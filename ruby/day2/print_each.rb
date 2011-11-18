arr = (0..16).to_a
arr_temp = []
arr.each do |i|
	arr_temp.push(i)
	if arr_temp.length == 4
		puts arr_temp[0..3].join(" ")
		arr_temp.clear()
	end
end

if arr_temp.length > 0 
	puts arr_temp[0..3].join(" ")
end
