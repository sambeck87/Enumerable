require_relative './my_list'

# Create our list
p list = MyList.new([1, 2, 3, 4])
#=> <MyList: @list=[1, 2, 3, 4]>

# Test #all?
p list.all? {|e| e < 5}
#=> true
p list.all? {|e| e > 5}
#=> false

# Test #any?
p list.any? {|e| e == 2}
#=> true
p list.any? {|e| e == 5}
#=> false

# Test #filter
p list.filter {|e| e.even?}
#=> [2, 4]
