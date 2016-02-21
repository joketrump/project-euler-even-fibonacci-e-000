# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit
  def initialize(limit)
    @limit = limit
  end
  
  def sum
    terms = Array.new
    a = 1
    b = 1
    c = 0
    terms.push(a)
    terms.push(b)
    while c <= @limit
      c = a + b
      if c > @limit
        break
      end
      terms.push(c)
      a = b
      b = c
    end
    sum = 0
    terms.each { |multiple| sum += multiple if multiple.even?}
    return sum
  end
end