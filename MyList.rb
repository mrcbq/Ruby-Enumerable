require_relative 'My_Enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

list = MyList.new(1, 2, 3, 4)

puts list.all? {|e| e < 5 } # true
puts list.all? {|e| e > 5 } # false
puts list.any? {|e| e == 2} # true
puts list.any? {|e| e == 5} # false
p list.filter {|e| e.even?} # [2, 4]
p [1, 2, 3, 4].find_all {|e| e.even?} # [2, 4]
puts list.all? # true
