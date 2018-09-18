require 'byebug'
class BinaryTree
	attr_accessor :data
	attr_accessor :left_child
	attr_accessor :right_child
	attr_accessor :parent

	def insert(data)
		if @data
		  if !@left_child
		  	@left_child = BinaryTree.new
		  	@left_child.insert(data)
		  elsif !@right_child
		  	@right_child = BinaryTree.new
		  	@right_child.insert(data)
		  else
		  	@left_child.insert(data)
		  end
		else
			@data = data
		end
	end

	def traverse
		puts "\n\n============== Node =================\n\n"
		puts "Data: #{@data}"
		puts "Left: #{@left_child.data || 'NULL'}"
		puts "Right: #{@right_child.data || 'NULL' }"
		@left_child.traverse if @left_child
		@right_child.traverse if @right_child
	end
end

btree = BinaryTree.new
btree.insert(5)
btree.insert(10)
btree.insert(12)
btree.insert(56)
btree.traverse