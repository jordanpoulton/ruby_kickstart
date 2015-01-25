def reverse_map(*args, &block)
  args.reverse.map(&block)
end

<<<<<<< HEAD

#======================
#paul fitz

def reverse_map(*arr, &block)		
		arr.reverse.map(&block)
end
=======
#Jordan
def reverse_map(*array)
  array.reverse.map {|e| yield e}
end
>>>>>>> 202b3dbd049e0c7936f227c4ded6abc592242bd8
