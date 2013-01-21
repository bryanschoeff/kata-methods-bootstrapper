class Kata
  attr_reader :class_name, :methods

  def initialize(class_name, methods)
    @class_name = class_name
    @methods = methods
  end

  def get_binding
    binding
  end

end

