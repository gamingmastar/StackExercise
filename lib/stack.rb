class Stack
	def initialize
		@empty = true
	end
	def push(item)
		@empty = false
	end
	def pop
		@empty ? nil : 1
	end
end