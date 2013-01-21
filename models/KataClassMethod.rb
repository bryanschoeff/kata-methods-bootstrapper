class KataClassMethod
  attr_reader :method

  def initialize(method)
    @method = method
  end

  def name 
    @method.to_s.gsub(':','')
  end
end

