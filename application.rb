require_relative 'models/Kata.rb'
require_relative 'models/KataBuilder.rb'
require_relative 'models/KataClassmethod.rb'

KataClass = "Array"
OutputPath = "output/"

instance = eval("#{KataClass}.new")
class_methods = eval("#{KataClass}.methods")
all_methods = instance.methods
instance_methods =  all_methods.select {|item| !class_methods.include?(item)}
instance_methods.sort!

kata = Kata.new(KataClass, instance_methods.map {|item| KataClassMethod.new(item)})

tests = KataBuilder.get_tests(kata)
fake = KataBuilder.get_fake(kata)

File.open("#{OutputPath}tests.rb", 'w') {|f| f.write(tests) }
File.open("#{OutputPath}fake_#{kata.file_name}.rb", 'w') {|f| f.write(fake) }
