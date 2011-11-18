arr = (0..16).to_a
arr.each_slice(4) do |x|
	puts x.join(' ')
end
