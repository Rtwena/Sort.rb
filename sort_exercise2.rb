array = [6, 5, 'b', 1, 2, 4, 3, 1, 'a']
str_array = []

def split_array (array, str_array)
	array.each_with_index{|value, index|
		if value.class == String
			str_array << array.delete_at(index)
		end
	}
end

def sort(array, rightside, leftside)
	array.length.times do
		if array[rightside] < array[leftside]
			temp = array[leftside]
			array[leftside] = array[rightside]
			array[rightside] = temp

			sort(array, rightside+1, leftside+1) if array.length != rightside+1			
		elsif array.length != rightside+1
			sort(array, rightside+1, leftside+1)
		end
	end
end

split_array(array, str_array)

sort(array, 1, 0)
sort(str_array, 1, 0)	

array << str_array
puts array
