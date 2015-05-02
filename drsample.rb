hm = gets.chomp.to_i
hm.times { 
	data = Hash.new { |h,k| h[k] = [] }
	x_array = Array.new 
	y_array = Array.new
	x_happen , y_happen ,x , y = 0 , 0 ,0 , 0
	3.times {
		input = gets.chomp
		input = input.split.map(&:to_i)
		x_array << input[0]
		y_array << input[1]
		if data.has_key?(input[0])
			distance = (data[input[0]]-input[1]).abs
			data.merge!(Hash[input.each_slice(2).to_a])
			x_happen = x_happen + 1
			x , y= input[0] , input[1]
		elsif data.has_value?(input[1])
			distance = (data.invert[input[1]]-input[0]).abs
			data.merge!(Hash[input.each_slice(2).to_a])
			y_happen = y_happen + 1
			x , y= input[0] , input[1]
		else
			data.merge!(Hash[input.each_slice(2).to_a])
		end
	}
	if x_happen == 1
		data.delete(x)
		data = data.to_a
		y_array.delete(y_array.detect { |e| y_array.count(e) > 1})
		puts data[0][0] , y_array
	elsif y_happen == 1
		data.delete(y)
		data = data.to_a
		x_array.delete(x_array.detect { |e| x_array.count(e) > 1})
		puts data[0][0] , x_array
	else
	end
}























