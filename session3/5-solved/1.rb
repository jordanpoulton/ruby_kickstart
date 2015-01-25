def reverse_map(*args, &block)
  args.reverse.map(&block)
end


#======================
#paul fitz

def reverse_map(*arr, &block)		
		arr.reverse.map(&block)
end