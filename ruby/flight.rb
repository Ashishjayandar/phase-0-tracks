module Flight
	def take_off(altitude)
		puts "Taking off and ascending untill #{altitude} feet"
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end


birdie=Bird.new
birdie.take_off(800)
aeroplane=Plane.new
aeroplane.take_off(40000)
