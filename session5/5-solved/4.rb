module OperatorGeneratorFromSpace
  def <(other)
    (self <=> other) < 0
  end

  def >(other)
    (self <=> other) > 0
  end

  def ==(other)
    (self <=> other) == 0
  end

  def <=(other)
    !(self > other)
  end

  def >=(other)
    !(self < other)
  end
end

#Jordan
module OperatorGeneratorFromSpace
  def <(arg)
    (self <=> arg) < 0
  end

  def >(arg)
    (self <=> arg) > 0
  end

  def ==(arg)
    (self <=> arg) == 0
  end

  def >=(arg)
    (self <=> arg) > -1
  end

  def <=(arg)
    (self <=> arg) < 1
  end
end
#=====
