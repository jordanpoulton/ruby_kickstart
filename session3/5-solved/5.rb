def spiral_access(arrays, iteration=0, &block)
  y_max = arrays.length - 1
  x_max = arrays.first.length - 1

  # base step
  return if y_max/2 < iteration || x_max/2 < iteration

  # top row
  iteration.upto x_max-iteration do |x|
    block.call arrays[iteration][x]
  end

  # right column
  (iteration + 1).upto y_max-iteration do |y|
    block.call arrays[y][x_max-iteration]
  end

  # bottom row
  (x_max - 1 - iteration).downto iteration do |x|
    block.call arrays[y_max-iteration][x]
  end

  # left column
  (y_max - 1 - iteration).downto iteration+1 do |y|
    block.call arrays[y][iteration]
  end

  # recursive step
  spiral_access arrays, iteration+1, &block
end

#========Meads============
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
#===============================



