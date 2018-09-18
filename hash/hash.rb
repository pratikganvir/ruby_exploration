class A
	def eql?(other)
		true
	end

	def hash
		123
	end
end

hash = Hash.new
a=A.new
b=A.new
hash[a]=5
puts hash[a]
puts hash[b]