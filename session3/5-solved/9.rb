def shared(a, b)
  # union = Hash.new do |hash, key|
  #   hash[key] = [(a.include?(key)||nil), # include returns true or false, when false, it goes to the RHS of the ||, and becomes nil
  #                (b.include?(key)||nil)]
  # end

  union = {}
  a.each do |element|

    union[element] ||= [nil, nil]
    union[element][0] = true
  end

  b.each do |element|
    union[element] ||= [nil, nil]
    union[element][1] = true
  end

  result = union.select { |key, value| value == [true, true] }.map { |key, value| key }

  return union, result.sort
end

#Jordan  - interested to get feedback here
def shared(a, b)
  union = Hash.new
  shared_items = Array.new
  a.each do |element|
    union[element] = [true, nil]

    if b.include? element
      union[element][1] = true
      shared_items << element
      b.delete(element)
    end
  end

  b.each do |element|
    union[element] = [nil, true]
  end
  [union, shared_items]
end
#==========
