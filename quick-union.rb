#!/usr/bin/env ruby

class QuickFind
  def initialize(n)
    @ids = (0..n-1).to_a
  end
  
  def connected?(id1,id2)
    @ids[id1] == @ids[id2]
  end
  
  def union(id1,id2)
    id_1, id_2 = @ids[id1], @ids[id2]
    @ids.map! {|i| (i == id_1) ? id_2 : i }
  end
end

# Test Case
qf = QuickFind.new 10

puts qf.connected?(1,4)

qf.union(1,4)
qf.union(4,5)

puts qf.connected?(1,4)
puts qf.connected?(5,1)
puts qf.connected?(2,4)
