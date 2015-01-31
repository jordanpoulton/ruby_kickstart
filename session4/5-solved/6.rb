class ApplicationController
  def body_class
    return @body_class if @body_class
    @body_class = String.new
    def @body_class.<<(str)
      concat ' ' unless length.zero?
      concat str
    end
    @body_class
  end
end

#Jordan - I DON'T UNDERSTAND WHY THIS ISN'T PUTTING THE SPACE IN???! HELP - SOMEONE?
class ApplicationController

  def initialize
    @body_class ||= ""
  end

  def body_class
    @body_class
  end

  def @body_class.<< arg
    concat ' ' unless self.length.zero?
    concat arg
  end
end
#============
