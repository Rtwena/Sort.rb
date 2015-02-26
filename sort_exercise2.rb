array = ['g', 6, 5, 2,'string', 5,6,7,8]
str_array = %w{fancy way of making string arrays sure are fancy!}
#starting indexes
rightside = 1
leftside = 0

def split_array (array, str_array)
  array.each_with_index do |value, index|
    str_array << array.delete_at(index) if value.class == String
  end
end

def sort(array, rightside, leftside)
  if array[rightside] < array[leftside]
    swap(array, rightside, leftside)
    sort(array, rightside+1, leftside+1) if array.length != rightside+1
  elsif array.length != rightside+1
    sort(array, rightside+1, leftside+1)
  end
end

def swap(array, rightside, leftside)
  temp = array[leftside]
  array[leftside] = array[rightside]
  array[rightside] = temp
end

#split strings and ints into two seperate arrays
split_array(array, str_array)

array.length.times{ sort(array, rightside, leftside) }

array.length.times{ sort(str_array, rightside, leftside) }

array << str_array
puts array
