def line_sums(filename)
  File.readlines(filename).inject 0 do |sum, line|
    numbers = line.split.map { |number| number.to_i }
    sum + numbers.max
  end
end

#Jordan
def line_sums(file)
  highest_on_each_line = []

  File.readlines(file).each do |line|
      highest_on_each_line << line.split.map{|e| e.to_i}.max
  end

  highest_on_each_line.inject(0){|sum, x| sum + x.to_i}
end
#======
