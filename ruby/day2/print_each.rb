arr = (0..16).to_a
arr_temp = []
arr.each do |i|
	arr_temp.push(i)
	if arr_temp.length == 4
		arr_temp.each {|a| print "#{a} "}
		puts
		arr_temp.clear()
	end
end

if arr_temp.length > 0 
	arr_temp.each {|a| print "#{a} "}
end
