class RubyKickstartException < Exception
end

def exception_raiser(num)
  if    num == 1 then raise                         "No 1s allowed!"
  elsif num == 2 then raise ArgumentError,          "No 2s allowed!"
  elsif num == 3 then raise Exception,              "No 3s allowed!"
  elsif num == 4 then raise SyntaxError,            "No 4s allowed!"
  elsif num == 5 then raise RubyKickstartException, "No 5s allowed!"
  end
end

#Jordan
class RubyKickstartException < Exception
end

def exception_raiser(num)
  raise RuntimeError, "No 1s allowed!" if num == 1
  raise ArgumentError, "No 2s allowed!" if num == 2
  raise Exception, "No 3s allowed!" if num == 3
  raise SyntaxError, "No 4s allowed!" if num == 4
  raise RubyKickstartException, "No 5s allowed!" if num == 5
end
#=======
