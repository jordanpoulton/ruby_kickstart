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
