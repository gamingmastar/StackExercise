class Stack
	def initialize
		@contents = Array.new
	end
	def push(item)
		@contents.push(item)
	end
	def pop
		@contents.pop
	end
end