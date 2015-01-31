def passthrough(enumerable, to_pass, &block)
  enumerable.each do |element|
    to_pass = block.call(to_pass, element)
  end
  to_pass
end

#Jordan
def passthrough(enum, to_pass, &block)
  enum.each do |e|
    to_pass = block.call(to_pass, e)
  end
  to_pass
end
#=====

