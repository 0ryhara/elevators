
$NUMBER_OF_ELEVATORS = 4
$ELEV_MAX_PERSONS = 10
$ELEV_RESTING_FLOOR = 1
$NUMBER_OF_FLOORS = 10

class Building
	
	def initialize
		@floors = {}
		@elevators = {}
		for i in 1..$NUMBER_OF_FLOORS
			@floors[i] = Floor.new(i)
		end
		for i in 1..$NUMBER_OF_ELEVATORS
			@elevators[i] = Elevator.new(i)
		end
	end
	
end