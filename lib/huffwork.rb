class Huffwork
  
  def is_ordered a
    if (a[0]+1 == a[1]) and (a[1]+1 == a[2])
      true
    elsif (a[0]-1 == a[1]) and (a[1]-1 == a[2])
      true
    else
      false
    end
  end
  
  def ordered_indexes a
    o = []
    a.each.with_index do |v, i|
      if is_ordered a[i..i+2]
        o << i
      end
    end
    o
  end
  
end

# a = Huffwork.new
# test = [1,2,3]
# puts a.is_ordered test
# fail = [2,4,7]
# puts a.is_ordered fail
# down = [5,4,3]
# puts a.is_ordered down
# puts "......"
# big = [1,2,3,4,7,6,5,4,8,6,2,8,5,3,2,6,7,8,7,6,2,3]
# puts a.ordered_indexes big