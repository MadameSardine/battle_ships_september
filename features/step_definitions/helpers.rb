module Helpers

	def register(player1)
		visit '/'
		click_link("Start a new game")
		fill_in "name"
		submit
	end
		

end