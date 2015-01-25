# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


#Jordan
def staircase(number)
  output = {}
  1.upto(number) do |num|
    next if num.even?

    array_of_all_numbers = Array.new(num) { |index| index+1 }


    output[num] = array_of_all_numbers.select{|e| e.even?}
  end
  output
end
