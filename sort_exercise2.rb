require 'pry'
array = [6, 5, 2, 4, 3, 1, 'a', 'c', 'b']

def sort(array, rightside, leftside)
	array.length.times do
		if array[rightside].class == Fixnum && array[leftside].class == Fixnum
			if array[rightside] < array[leftside]
				temp = array[leftside]
				array[leftside] = array[rightside]
				array[rightside] = temp

				sort(array, rightside+1, leftside+1) if array.length != rightside+1			
			elsif array.length != rightside+1
				sort(array, rightside+1, leftside+1)
			end
		end

		if array[rightside].class == String && array[leftside].class == String
			puts 'hi'
			if array[rightside] < array[leftside]
				temp = array[leftside]
				array[leftside] = array[rightside]
				array[rightside] = temp

				sort(array, rightside+1, leftside+1) if array.length != rightside+1			
			elsif array.length != rightside+1
				sort(array, rightside+1, leftside+1)
			end
		end
		sort(array, rightside+1, leftside+1) if array.length < rightside+1
	end
end

sort(array, 1, 0)	

puts array

# if array[rightside].class == String && array[leftside].class == String
# 					if array[rightside] < array[leftside]
# 					temp = array[leftside]
# 					array[leftside] = array[rightside]
# 					array[rightside] = temp
# 				end