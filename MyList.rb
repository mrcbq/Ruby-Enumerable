# Create a class MyList that has an instance variable @list.

class MyList
  def initialize(*args)
    @list = args
  end
  
  def all?()
    yield( @list )
  end
end


list = MyList.new(1, 2, 3, 4)

list.all? {|e| e < 5 }