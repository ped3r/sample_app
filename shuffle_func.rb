class WordUtil
	def shuf(s)
		a = []
		b = s.split(' ').join #remove spaces
		(0.. b.length-1).each do |i|
			a.push b[i] #push each char onto a
		end
		a.shuffle.join
	end
end