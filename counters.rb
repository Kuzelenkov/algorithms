class Array
  def result(name)
    puts "#{name} algorithm complexity on array of #{size} elements is #{bigO}"
  end

  private

  LOOP = 0
  COND = 1
  SWAP = 2

  def prepare() @counter = [0,0,0] end
  def inc(i) @counter[i] += 1 end

  def bigO
    n = size
    case counter[:condition]
    when 0..1 then 'O(1)'
    when 0..Math.log2(n) then 'O(log n)'
    when 0..n then 'O(n)'
    when 0..(n*Math.log2(n)) then 'O(nlog n)'
    when 0..(n**2) then 'O(n^2)'
    when 0..(n**n) then 'O(n!)'
    else 'are you kidding me'
    end
  end
end
