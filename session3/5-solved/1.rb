def reverse_map(*args, &block)
  args.reverse.map(&block)
end

#======================
#paul fitz

def reverse_map(*arr, &block)
		arr.reverse.map(&block)
end

#Jordan
def reverse_map(*array)
  array.reverse.map {|e| yield e}
end

#Sebastien
def reverse_map(*array, &block)
	array.reverse.map do |e|
		block.call(e)
	end
end

#Yannick
def reverse_map(*arr, &block)
		arr.reverse.map(&block)
end

# Tom Coakes
def reverse_map(*args, &block)
    args.reverse.map(&block)
end

# Chris Ward

def reverse_map(*input_array,&input_block)
	input_array.reverse.map(&input_block)
end
