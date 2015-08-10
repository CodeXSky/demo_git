class Person 
	def initialize(name,age)
		@name,@age = name,age
	end
	def introduce "my name is #{@name}, i'm #{@age} years old"
		end
	protected #every method below will be protected!
	def privacy;	"my nick name is jacky";end
	def secret;end
end
j = Person.new("jack",24)
puts j.introduce
puts j.privacy


		
