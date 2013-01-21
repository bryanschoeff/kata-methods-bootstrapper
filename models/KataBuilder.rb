require 'ERB'

class KataBuilder
  
  def self.get_tests(kata)
    template_string = File.open('templates/tests.rb.erb') { |f| f.read }
    template = ERB.new(template_string)
    template.result(kata.get_binding)
  end

  def self.get_fake(kata)
    template_string = File.open('templates/class.rb.erb') { |f| f.read }
    template = ERB.new(template_string)
    template.result(kata.get_binding)
  end


end
