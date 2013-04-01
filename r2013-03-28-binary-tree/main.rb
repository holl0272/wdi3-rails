require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

# def sum(a, b)
#   a + b
# end

# def square(a)
#   a ** 2
# end

# def cube(a)
#   square(a) * a
# end

# def quad(a)
#   cube(a) * a
# end

# def factorial(x)
#   if x == 1
#     1
#   else
#     x * factorial(x - 1)
#   end
# end

# def fib(x)
#   if x == 1 || x == 2
#     1
#   else
#     fib(x - 1) + fib(x - 2)
#   end
# end

class Node
  attr_accessor :d, :p, :n

  def initialize(d)
    self.d = d
    self.p = self.n = nil
  end

  def to_s
    nxt = self.n.nil? ? 'empty' : self.n.d
    prv = self.p.nil? ? 'empty' : self.p.d
    "#{prv} <- #{self.d} -> #{nxt}"
  end
end

class Tree
  attr_accessor :root, :nodes

  def insert(name)
    if self.root.nil?
      self.root = Node.new(name)
    else
      insert_node(self.root, name)
    end
  end

  def insert_node(node, name)
    if (name < node.d) && (!node.p.nil?)
      insert_node(node.p, name)
    elsif (name > node.d) && (!node.n.nil?)
      insert_node(node.n, name)
    elsif (name < node.d) && (node.p.nil?)
      node.p = Node.new(name)
    elsif (name > node.d) && (node.n.nil?)
      node.n = Node.new(name)
    end
  end

  def find(name)
    find_node(self.root, name)
  end

  def find_node(node, name)
    if name == node.d
      node
    elsif name < node.d && !node.p.nil?
      find_node(node.p, name)
    elsif name > node.d && !node.n.nil?
      find_node(node.n, name)
    else
      nil
    end
  end

  def to_s
    self.nodes = []
    get_node(self.root)
    nodes.join(', ')
  end

  def get_node(node)
    get_node(node.p) if !node.p.nil?
    self.nodes << node.d
    get_node(node.n) if !node.n.nil?
  end

end

t1 = Tree.new
t1.insert('mary')
t1.insert('kelly')
t1.insert('james')
t1.insert('lucy')
t1.insert('sam')
t1.insert('george')
t1.insert('charlie')
t1.insert('zack')
t1.insert('bill')

kelly = t1.find('kelly')
lucy = t1.find('lucy')
frank = t1.find('frank')
puts "K: #{kelly}"
puts "L: #{lucy}"
puts "F: #{frank}"
puts "T: #{to_s}"

binding.pry

# puts fib(4)

# puts factorial(5)

# x = quad(3)

# c = sum(3, 4)
# d = sum(5, 6)
# e = sum(7, 8)

# puts "The sum of 3 and 4 is #{c}"
