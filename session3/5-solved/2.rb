def staircase(n)
  to_return = {}
  1.upto n do |crnt_size|
    next if crnt_size.even?
    all   = Array.new(crnt_size) { |i| i + 1 }
    evens = all.select { |i| i.even? }
    to_return[crnt_size] = evens
  end
  to_return
end

#Jordan
def staircase(number)
  output = {}
  1.upto(number) do |num|
    next if num.even?

    array_of_all_numbers = Array.new(num) { |e| e+1 }
    only_evens = array_of_all_numbers.select{|e| e.even?}

    output[num] = only_evens
  end
  output
end
