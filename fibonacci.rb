def fibs(num)
	fib_nums = [0, 1]
	fib_nums << fib_nums[-1] + fib_nums[-2] until fib_nums.size == num
	return fib_nums[0..num - 1]
end

def fibs_rec(num, fib_nums = [0, 1])
	return fib_nums[0..num - 1] if fib_nums.size == num
	fib_nums << fib_nums[-1] + fib_nums[-2]
	fibs_rec(num, fib_nums)
end