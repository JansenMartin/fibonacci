# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: Linear or O(n), where n is the input
# Space complexity: Constant or O(1), because additional space doesn't rely on the input
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0

  return 0 if n == 0
  return 1 if n == 1

  fibonacci = 0

  first_number = 0
  second_number = 1

  (n - 1).times do
    fibonacci = first_number + second_number

    first_number = second_number
    second_number = fibonacci
  end

  return fibonacci
end
