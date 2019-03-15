class Stack
    def initialize
      # create ivar to store stack here!
    end

    def push(el)
      # adds an element to the stack
      self << el
    end

    def pop
      # removes one element from the stack
      self.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      self[-1]
    end
  end


class Queue
  def enqueue(el)
    self.unshift(el)
  end

  def dequeue
    self.pop
  end

  def peek
    self[0]
  end
end

class Map
  def set(key, value)
    self << [key, value]
  end

  def get(key)
    self.each_with_index do |el, idx|
      return self[idx] if el[0] == key
    end
    nil
  end

  def delete(key)
    self.each_with_index do |el, idx|
      self.delete_at(idx) if el[0] == key
    end
  end

  def show
    
  end
end




