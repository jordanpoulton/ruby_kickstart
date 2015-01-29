def array_init(size=5, &block)
  block ||= Proc.new { |i| (100 * i).to_s }
  Array.new(size, &block)
end

#Jordan - wish I'd thought of the one above...
def array_init(size=5, &block)
  array = Array.new(size) do |index|
    if block_given?
      block.call index
    else
      (index * 100).to_s
    end
  end
end
