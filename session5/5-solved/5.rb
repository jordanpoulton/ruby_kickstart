def list_of_errors_and_exceptions
  Object.constants.grep(/exception|error/i)
end

#Jordan
def list_of_errors_and_exceptions
  Module.constants.grep(/(Error|Exception)/i)
end
#=====
