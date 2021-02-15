require 'counters'

class Array
  def bubble_sort
    prepare
    loop do
      inc(LOOP)
      swapped = false

      self.each_cons(2).with_index do |(x,y),i|
        inc(COND)

        if x > y
          inc(SWAP)
          swapped = true
          self[i], self[i+1] = y, x
        end
      end
      break unless swapped
    end
  end
end