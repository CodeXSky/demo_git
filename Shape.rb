module Util
	PI = 3.14
	def area
		self.radius**2*PI
		
	end
	def Util.pi2
		PI**2
		
	end
	
end
puts Util.pi2

class Shape; end
class Pie < Shape
	include Util
	def initialize(r); @radius=r;end
	def radius;@radius;end
end
puts Pie.new(2).area
puts Util.pi2
