module ApplicationHelper
#return a default title if none is present in page_controller
	def title
		base_title = "Ruby on Rails Tutorial Sample App"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
	def random
		a = ('a'..'z').to_a
		(1..50).each do |i|
			a.push i
		end
		a = a.shuffle.join[0..20]
	end
end
