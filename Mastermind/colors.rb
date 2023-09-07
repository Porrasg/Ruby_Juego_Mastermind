class Colors
	attr_accessor :colors, :selected_colors

	def initialize(color1=random, color2=random, color3=random, color4=random)
		@colors = [color1, color2, color3, color4]
	end

	def random
		colors = ["red", "blue", "green", "yellow"]
		code_random_colors = colors.sample
		@selected_colors ||= []
		until !@selected_colors.include?(code_random_colors)
			code_random_colors = colors.sample
		end
		@selected_colors << code_random_colors
		code_random_colors
	end
end