# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
two_d = [
   [ 1,  2,  3,  4, 5],
   [16, 17, 18, 19, 6],
   [15, 24, 25, 20, 7],
   [14, 23, 22, 21, 8],
   [13, 12, 11, 10, 9],
 ]
# order = []
# spiral_access two_d do |i|
#    order << i
#  end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
order = []
def spiral_access(arr, &block)
  return if arr[0].nil? || arr.flatten.empty? == true || arr.length == 0 #base cases when the array has no more multi arrays left.
  len = arr[0].length
  0.upto(len-1) do |x|
      block.call arr[0][x] #for each individual number append to the array in the block
    end
  arr.shift#removes the first element of the array
  arr = arr.transpose.reverse#rotates the array -90 degrees
  spiral_access(arr, &block)#calls the method again to repeat
  end


one_d = [[1,2],[4,3]]
 #spiral_access([[]]) { raise "You invoked the block" }

spiral_access one_d do |i|
    order << i
   p order
   end




