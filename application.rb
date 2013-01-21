require_relative 'models/Kata.rb'
require_relative 'models/KataBuilder.rb'
require_relative 'models/KataClassmethod.rb'

KataClass = "Array"

methods = eval("#{KataClass}.methods")
kata = Kata.new(KataClass, methods.map {|item| KataClassMethod.new(item)})
tests = KataBuilder.get_tests(kata)


print tests


