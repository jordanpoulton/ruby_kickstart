def print_list(list)
  while list
    puts list[:data]
    list = list[:next]
  end
end

#Jordan
def print_list(list)
  until list == nil
    puts list[:data]
    list = list[:next]
  end
end
#=====
