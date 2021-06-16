class SmartStack < Stack
    attr_reader :max_size

    def initialize(number)
        @max_size = number
        super()
    end

    def max_size
        @max_size
    end

    def full?
        size == max_size
    end

    def push(*args)
        if args.length + size > max_size
            raise "stack is full"
        else
            @underlying_array.concat(args)
            size
        end
    end

    def pop(n = nil)
        results = []
        if n == nil
            results << @underlying_array.pop
        else
            n.times { results << @underlying_array.pop }
        end
        results
    end
end