module Inject
  def inject(n)
    self.each do |value|
      n = yield(n,value)
    end
    n
  end

  def sums(initial=0)
    inject(initial) {|n,value| n + value }
  end

  def multiplies(initial=1)
    inject(initial) {|n,value| n * value }
  end
end

class Array
include Inject
end

puts [1,2,5].sums

puts [1,2,5].multiplies
