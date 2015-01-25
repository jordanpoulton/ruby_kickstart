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