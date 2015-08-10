#/home/jackson/RubyExercise
def say_hello
	print("Jack said:")
	yield 1,2 if block_given?
end

#say_hello{|a,b| print "hello",a,b}

b = Proc.new{|a,b| print "hello",a,b}
l = lambda{|a,b| print "hello",a,b}
say_hello(&b)
say_hello(&l)