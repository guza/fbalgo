

$matched = nil
$answer = Array.new

$case1 ,$case2 ,$case3 = 0,0,0

def user_input
	input = gets.chomp.to_i
	input.times do 
		$matched = gets.chomp.to_s
		is_matched($matched,$matched.length-1)
        result
	end
end


def is_matched(matched , iter)
	if ( matched == nil) 
		puts "matched == nil"
	end
    #return if $matched.length.zero?
     if ( iter < 0 ) 
        return if $matched.length > 0
     end
    #puts $matched[iter]

   
    if ($matched[iter] == ")") 
    	$case1 = $case1 + 1 
    end
    if ($matched[iter] == "}") 
    	$case2 = $case2 + 1 
    end
    if ($matched[iter] == "]") 
    	$case3 = $case3 + 1 
    end

    if ($matched[iter] == "(") 
    	$case1 = $case1 - 1 
    end
    if ($matched[iter] == "{") 
    	$case2 = $case2 - 1 
    end
    if ($matched[iter] == "[") 
    	$case3 = $case3 - 1 
    end
    # print $case1, $case2, $case3
    # puts " "
    
    is_matched($matched,iter-1)
end

def result
    if( $case1 == 0 && $case2 == 0 && $case3 == 0) 
       $answer.push("YES")
    else
       $answer.push("NO")
    end
end

user_input

puts $answer
