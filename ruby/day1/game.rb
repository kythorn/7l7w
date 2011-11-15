x = rand(10)
y = -1
puts 'Shall we play a game?'
while y != x
	puts 'Please enter a number between one and ten'
	y = gets.chomp.to_i
	unless y == x 
		puts 'Incorrect!'
			if y < x
				puts 'Try a higher number'
			else
				puts 'Try a lower number'
			end

	else
		puts 'Congratulations!'
	end
end