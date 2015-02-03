# This can be handled in a much cleaner way in 1.9, without the params fiddling

def problem_14(*params)
  problem = params.pop[:problem] if params.last.is_a? Hash
  problem ||= :count_clumps

  return count_clumps(*params) if problem == :count_clumps
  return same_ends(*params)    if problem == :same_ends
end

def count_clumps(*numbers)
  clumps     = 0
  previous   = nil
  two_before = nil

  numbers.each do |number|
    clumps += 1 if (previous == number) && (previous != two_before)
    two_before = previous
    previous   = number
  end
  clumps
end

def same_ends(n, *params)
  params[0, n] == params[-n, n]
end

#Jordan
def problem_14(*array)
  problem = array.pop[:problem] if array.last.is_a? Hash
  problem ||= :count_clumps

  problem == :count_clumps ? count_clumps(*array) : same_ends(*array)
end

def same_ends(n, *array)
  array[0,n] == array[-n, n]
end


def count_clumps(*array)
  clumps = 0
  flag = 0
  array.each_index do |index|
    if(array[index] == array[index+1])
      flag += 1
    else
      clumps +=1 if flag > 0
      flag = 0
    end
  end
  clumps
end
#========
