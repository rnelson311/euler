# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def sum_even_fibonacci(limit)
  num       = 2
  prior_num = 1
  sum = 0

  until num >= limit
    if num.even?
      sum += num
    end
    new_num = num + prior_num
    prior_num = num
    num = new_num
  end
  sum
end

sum_even_fibonacci(4000000)     # => 4613732
