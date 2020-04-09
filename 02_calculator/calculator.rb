#write your code here
def add(num1, num2)
	result = num1 + num2
	return result
end

def subtract(num1, num2)
	result = num1 - num2
	return result
end

def sum(arr)
	total = 0
	arr_length = arr.length
	arr_length = arr_length -1
	for i in 0..arr_length
		total = total + arr[i]
	end
	return total
end

def multiply(arr)
	total = 1
	arr_length = arr.length
	arr_length = arr_length -1
	for i in 0..arr_length
		total = total * arr[i]
	end
	return total
end

def power(num1, num2)
	total = 1
	for i in 1..num2
		total = total * num1
	end
	return total
end
		
		