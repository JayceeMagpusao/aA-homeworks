class Stack
    def initialize
        @underlying_array = []
    end

    def size
        @underlying_array.length
    end

    def empty?
        size == 0
    end

    def top
        @underlying_array[-1]
    end

    def peek(n)
        @underlying_array[-n..-1]
    end

    def push(item)
        @underlying_array << item
        size
    end

    def pop
        if empty?
            nil
        else
            top
            @underlying_array.pop
        end
    end
end