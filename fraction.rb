class  Fraction
	attr_accessor :numerator,:denominator
	def initialize(numerator,denominator)
		@numerator = numerator
		@denominator = denominator
	end
	def add(fraction)
		@numerator = @numerator * fraction.denominator + fraction.numerator * @denominator
		@denominator = fraction.denominator * @denominator
	end
	def to_s
		"#{numerator}/#{denominator}"
	end
end

a = Fraction.new(2,3)
b = Fraction.new(3,4)

puts a
puts b

a.add(b)

puts a




