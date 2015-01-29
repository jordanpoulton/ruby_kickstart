def list_size(list)
  return 0 unless list
  1 + list_size(list[:next])
end

def middle(list, distance=list_size(list)/2)
  return list[:data] if distance == 0
  middle list[:next], (distance - 1)
end

#Jordan
def list_size(list)
  return 0 if list == nil
  1 + list_size(list[:next])
end

def middle(list, mid_point=list_size(list)/2)
  return list[:data] if mid_point == 0
  middle list[:next], (mid_point -1)
end
#===========
