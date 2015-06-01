matched = nil
answer = nil
case1,case2,case3 = 0,0,0
def user_input(matched)
	input = gets.chomp.to_i
	input.times do 
		matched = gets.chomp	
		is_matched(matched,matched.length-1)
	end
	

end

def is_matched (matched, iter)
	if (matched == nil) 
		return -1
	 end
	if (iter < 0) 
		return -1 
	end
	println(matched(iter))
    if (matched(iter) == ")") 
	case1 = case1 + 1 
	end
    if (matched(iter) == "}") 
	case2 = case2 + 1 
	end
    if (matched(iter) == "]") 
case3 = case3 + 1 
end

    if (matched(iter) == "(")
 case1 = case1-1 
end
    if (matched(iter) == "{") 
case2 = case2-1 
end
    if (matched(iter) == "[")
 case3 = case3-1 
end

	is_matched(matched,iter-1)
	if(case1==0 && case2==0 && case3==0)
		answer << "YES"
	else
		answer << "NO"
	end

end


user_input(matched)







