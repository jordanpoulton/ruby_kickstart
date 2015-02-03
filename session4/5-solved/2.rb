# 1's solution requires the actual file we are interested in
require File.dirname(__FILE__) + "/1_stack_classes_inspect"

class StackInDisguise < Stack
  def inspect
    ary = []
    current = @head
    while current
      ary << current.data
      current = current.next_node
    end
    ary.reverse.inspect
  end
end

#Jordan - for some reason rake isn't working as this require doesn't seem to work - BUT NOR DOES THE ANSWER BY JOSH!! ANYONE HAVE ANY SUGESTIONS?

require File.dirname(__FILE__) + "/1_stack_classes_inspect"

class StackInDisguise < Stack
  def inspect
    output = []
    current_head = @head
    while current_head
      output << current_head.data
      current_head = current_head.next_node
    end
    output.reverse
  end
end
#===================
