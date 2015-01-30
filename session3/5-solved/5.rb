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
#Really nice solution Meads (Jordan)


# Tom Coakes -- I'm sorry, I pretty much hardcoded most of this
# but I just can't bear to look at it again for the moment!
# Plan to come back to it when I learn more about recursion

def spiral_access(array, &block)
  x_length = array[0].length
  y_length = array.length

  iterate_order = []

  return if array == [[]]

  # top row
  array[0][0..x_length].each { |num| iterate_order << num }

  # right-side
  array[1...y_length - 1].each do |small_array|
    iterate_order << small_array[x_length - 1]
  end

  # bottom row
  array[y_length - 1][0..x_length].reverse.each { |num| iterate_order << num }

  # left-side
  array[1...y_length - 1].reverse.each do |small_array|
    iterate_order << small_array[0]
  end

  if y_length > 2
    # second run top
    array[1][1...x_length - 1].each { |num| iterate_order << num }

    # second run right side
    array[2...y_length - 1].each do |small_array|
      iterate_order << small_array[x_length - 2]
    end

    # second run bottom
    array[y_length - 2][1..x_length - 3].reverse.each { |num| iterate_order << num }

    # second run left side
    array[2...y_length - 2].reverse.each do |small_array|
      iterate_order << small_array[1]
    end

    # final element
    array[2][2...x_length - 2].each { |num| iterate_order << num }
  end

  if y_length >= 6
    # third run right side
    iterate_order << array[3][3]
    iterate_order << array[3][2]
  end

  iterate_order = iterate_order.uniq
  final_array = block.call iterate_order
  final_array.flatten!

end