require 'byebug'

def checkMatchingParenthesis(expression)
	opening_paranthesis = ['[','(','{']
  closing_paranthesis = [']',')','}']
  stack = Array.new
	expression.each_char do |char|
		stack.push(char) if opening_paranthesis.include?(char)
		if closing_paranthesis.include?(char)
			popped_index = closing_paranthesis.index(char)
			if opening_paranthesis[popped_index] == stack.pop
				next
			else
				puts "NO"
				exit
			end
		end
	end
	puts 'YES' if stack.empty?
end


checkMatchingParenthesis('({[]})')
checkMatchingParenthesis('({[]}}')