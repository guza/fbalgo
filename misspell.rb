t = gets.chomp.to_i
answer=[]

t.times {
	misspell = gets.chomp
	misspell = misspell.split.map(&:to_s)
	
	answer<<misspell[1][0...misspell[0].to_i-1]+misspell[1][misspell[0].to_i..misspell[1].length]
}

(1..t).each do |ans|
	print ans," ",answer[ans-1]
	puts 
end
