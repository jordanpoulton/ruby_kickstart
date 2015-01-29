def your_sort( array , &orderer )
  # if it is nil, then it hasn't been set, default to spaceship operator for comparison result
  orderer ||= Proc.new { |a, b| a <=> b }

  array.each_index do |index1|
    array.each_index do |index2|
      order = orderer.call(array[index1], array[index2])
      array[index1], array[index2] = array[index2], array[index1] if order < 0
    end
  end
end

#Jordan - I still don't really understand this...
def your_sort(array, &sorter)
  sorter ||= Proc.new { |a,b| a <=> b}
  array.each_index do |item1|
    array.each_index do |item2|
      order = sorter.call(array[item1], array[item2])
      array[item1], array[item2] = array[item2], array[item1] if order < 0
    end
  end
end
#=========
