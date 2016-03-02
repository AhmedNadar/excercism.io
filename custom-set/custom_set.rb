class CustomSet

  attr_reader :arr

  def initialize(*arr)
    arr[0] = [] if arr[0].nil?
    arr[0] = arr[0].to_a if arr[0].class == Range
    @arr = arr[0].uniq.sort
  end

  def ==(obj)
    self.arr.eql?(obj.arr)
  end


  def delete(arg)
    CustomSet.new(arr - [arg])
  end

  def difference(obj)
     CustomSet.new(self.arr - obj.arr)
  end

  def disjoint?(obj)
    self.arr.each_with_index.any? {|i,j| i==obj.arr[j] && i.class == obj.arr[j].class }
  end

  def empty
    CustomSet.new
  end

  def intersection(obj)
    CustomSet.new(self.arr.keep_if { |i| obj.arr.include?(i) })
  end

  def member?(arg)
    arr.any? {|i| i==arg && i.class == arg.class }
  end

  def put(arg)
    a = arr << arg if !member?(arg)
    CustomSet.new(a)
  end

end
