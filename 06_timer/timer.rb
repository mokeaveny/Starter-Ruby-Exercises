class Timer
	attr_accessor :seconds, :time_string
	
	def initialize() # Default constructor. Set the timer to 0 seconds.
		@seconds = 0
	end

	def time_string
		hours = (@seconds/3600).round() # 3600 seconds in an hour
		minutes = (@seconds/60).round() % 60 # 60 seconds in a minute
		seconds = @seconds % 60 # Modulus operator to calculate the seconds as they are the total number of seconds remainder 60
		@time_string = format(hours) + ":" + format(minutes) + ":" + format(seconds)
	end

	def format(time)
		if time < 10
			time = "0" + time.to_s
		else
			time = time.to_s
		end
	end	

end
