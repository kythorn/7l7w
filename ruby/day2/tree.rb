class Tree
	attr_accessor :children, :node_name
  
	def initialize(name, input)
		@node_name = name
		@children = []
		input.each do |x,y| 
			children.push(Tree.new(x, y))
		end
	end
  
	def visit_all(&block)
		visit &block
		@children.each {|c| c.visit_all &block}
	end
  
	def visit(&block)
		block.call self
	end
	
	
end

input_data = {'grandpa' => {'dad' => {'child 1' => {}, 'child2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }

tree = Tree.new("start", input_data)

puts "visiting a node"
tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
tree.visit_all {|node| puts node.node_name}