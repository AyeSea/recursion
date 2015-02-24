def merge_sort(arr, result = [])
	return arr if arr.size == 1

	arr_b = merge_sort(arr[0...arr.size / 2])
	arr_c = merge_sort(arr[arr.size / 2..-1])

	while arr_b.size > 0 && arr_c.size > 0
		arr_b[0] < arr_c[0] ? result << arr_b.shift : result << arr_c.shift
	end

	arr_b.size == 0 ? result << arr_c : result << arr_b

	result.flatten
end

p merge_sort([3, 1])										#[1, 3]
p merge_sort([1, 3, 7, 2])							#[1, 2, 3, 7]
p merge_sort([9, 5, 1, 23, 95, 24, 19])	#[1, 5, 9, 19, 23, 24, 95]