require_relative 'models/Kata.rb'
require_relative 'models/KataBuilder.rb'
require_relative 'models/KataClassmethod.rb'

KataClass = "Array"
OutputPath = "output/"

methods = eval("#{KataClass}.methods")
kata = Kata.new(KataClass, methods.map {|item| KataClassMethod.new(item)})

tests = KataBuilder.get_tests(kata)
fake = KataBuilder.get_fake(kata)

File.open("#{OutputPath}tests.rb", 'w') {|f| f.write(tests) }
File.open("#{OutputPath}fake_#{kata.class_name.downcase}.rb", 'w') {|f| f.write(fake) }
