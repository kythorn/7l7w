fname = ARGV[0]
rpattern = ARGV[1]
line = 1
regex = /#{rpattern}/

File.open(fname) { |f|
	f.readlines.each { |l|
		puts("Line #{line}: #{l}") if regex.match(l)
		line = line + 1
	}
}