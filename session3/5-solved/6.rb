def match_maker(opposites_attract, *elements)
  to_return = []
  elements.each_slice 2 do |first, last|
    first  = !!first
    last   = !!last
    result = if opposites_attract
               first != last
             else
               first == last
             end
    to_return << result
  end
  to_return
end

#Jordan
def match_maker(flipped, *args)
  array = Array.new
  args.each_slice(2) do |first,last|
    flipped ? array << (!!first != !!last) : array << (!!first == !!last)
  end
  array
end
#===========

# Tom Coakes
def match_maker(*args)
  result = []
  switch = args.shift

  args.each_slice(2) do |arg1, arg2|
    arg1 = !!arg1 # Double bang used to force these into booleans
    arg2 = !!arg2
    if switch == true
      result << false if arg1 == arg2
      result << true if arg1 != arg2
    else
      result << true if arg1 == arg2
      result << false if arg1 != arg2
    end
  end

  result
end


#=======================
#paulf
def match_maker(t_f, *arguments)
  answer = []
    arguments.each_slice(2) do |x, y|   #slices the argument 2 elements at a time
      x = !!x 
      y = !!y   

    result = if t_f   #true if t_f == true and x != y
        x != y
        else
        y == x      #else false if t_f == true and x == y
        end
    answer << result
  end
  answer
end

