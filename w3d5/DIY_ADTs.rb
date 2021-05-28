class Stack
    attr_reader :array

    def initialize
      @array = []
    end

    def push(el)
      array.push(el)
    end

    def pop
      array.pop
    end

    def peek
      array.last
  end
end

class Queue
    attr_reader :array

    def initialize
        @array = []
    end

    def enqueue(el)
        array.push(el)
    end

    def dequeue
        array.shift
    end

    def peek
        array.first
    end
end

class Map
    attr_reader :array

    def initialize
        array = []
    end

    def set(key, value)
        pairs = array.index { |pair| pair[0] == key}
        if pairs
            array[pairs][1] = value
        else
            array.push([key, value])
        end
        value
    end

    def get(key)
        array.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
        nil
    end

    def delete(key)
        array.reject! { |pair| pair[0] == key }
    end

    def show
        deep_dup(array)
    end

    def deep_dup(array)
        array.map do |element|
            if element.is_a?(Array)
                deep_dup(element)
            else
                element
            end
        end
    end
end