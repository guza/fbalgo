t = gets.chomp.to_i
sum = 0
answer = []

def check_answer(w , sum) 
	if w>=sum 
		return "YES"
	else
		return "NO"
	end
end

t.times {
	w = gets.chomp.to_i
	if w.between?(0,1000)
		ar = gets.chomp
		ar = ar.split.map(&:to_i)
		ar.each do |iter|
			sum = sum + iter
		end
		answer << check_answer(w,sum)
	else
	end
}

answer.each do |result|
	puts result
end
