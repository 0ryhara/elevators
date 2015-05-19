require "./building.rb"

class Elevator
	
	def initialize(number)
		@number = number
		@floor = ELEV_RESTING_FLOOR
		@persons = 0
		@direction = "nowhere"
		@direct_buttons = {}
		for i in 1..$NUMBER_OF_FLOORS
			@direct_buttons[i] = "unpressed"
		end
	end
	
	def add_person(person)
		@persons = @persons + 1
		@direct_buttons[person.objective] = "pressed"
	end
	
	def drop_persons(number, floor)
		@persons = @persons - number
		@direct_buttons[floor] = "unpressed"
	end
	
	def to_s
		"elevator " + @number.to_s + " on floor " + @floor.to_s + " carrying " + @persons.to_s + " person(s) going " + @direction
	end
	
end

elevator = Elevator.new(1, 1)
puts elevator.to_s