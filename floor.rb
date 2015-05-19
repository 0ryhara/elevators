require "./building.rb"
class Floor
	
	
	def initialize(number)
		@number = number
		@queue = []
		@people = []
		@up_button = "unpressed"
		@down_button = "unpressed"
		
	end
	
	def person_to_queue
		person = @people[rand(@people.length)]
		@queue.push(person)
		if person.get_objective > @number
			@up_button = "pressed"
		else
			@down_button= "pressed"
		end
			
	end
	
end

floor = Floor.new(1)