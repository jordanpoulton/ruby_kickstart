def first_object(a, b, c)
  a || b || c || nil
end

#Jordan - v1
def first_object(arg1, arg2, arg3)
  return arg1 if arg1
  return arg2 if arg2
  return arg3 if arg3
end

#Jordan - v2
def first_object(arg1, arg2, arg3)
  arg1 || arg2 || arg3 || nil
end
#===========

