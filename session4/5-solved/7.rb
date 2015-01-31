def longest_method(object)
  object.methods.max_by { |meth| meth.length }
end

#Jordan
def longest_method(object)
  object.methods.sort {|a,b| a.length <=> b.length}.pop
end
#======
