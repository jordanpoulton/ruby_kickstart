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

    array_of_all_numbers = Array.new(num) { |index| index+1 }


    output[num] = array_of_all_numbers.select{|e| e.even?}
  end
  output
end
#=======

#================================
#paul fitz & meads

def staircase(n)
	answer = Hash.new
	evens = []
	odds = []

	1.upto(n) do |x|			#0 is even
		evens << x if x.even?
		odds << x if x.odd?
	end
	odds.each do |x|
		answer[x] = evens.select do |y|
			y if y < x
			end
		end
end

#Sebastien
def staircase(number)
	newHash = Hash.new { |hash, key| hash[key] =[]  }
	(1..number).each do |x|
		newHash.delete_if{|key, val| key.even?}
		if x.odd?
			newHash[x] = (1..x).step(1).to_a.select { |e| e.even? }
		end
	end
	return newHash
end

# Yannick
def staircase(n)

	return_hash = Hash.new {|value,key| value[key] = []}
	odd = []
	even = []

	(1..n).each do |x|
		odd << x if x.odd?
		even << x if x.even?
	end

	odd.each{|x| return_hash[x] = even.select{|y| y < x ? y : nil}}

end


# Tom Coakes
def staircase(int)
  hash = {}
  (1..int).each { |num| hash[num] = [] if num.odd? }

  hash.each do |key, value|
    array = []
    (1..key).each do |num|
      array << num if num.even?
      hash[key] = array
    end
  end
end

#Chris Ward

def staircase(num)
	output = {}
	(1..num).each do |i|
		  if i.odd?
		  	array = []
		  	(1..i).each do |x|
		  		array << x if x.even?
		  	end
		  	output[i] = array
		  end
	end
output
end