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


<<<<<<< HEAD
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

=======
>>>>>>> 202b3dbd049e0c7936f227c4ded6abc592242bd8
