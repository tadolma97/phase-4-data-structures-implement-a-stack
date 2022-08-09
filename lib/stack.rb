# your code here
class Stack 
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end
    def push(value)
        if @stack.length == @limit
            raise "Stack Overflow"
        else 
            @stack.push(value)
        end
        
    end
    def pop
        @stack.pop
    end
    def peek
        @stack.last
    end
    def size
        @stack.length
    end
    def empty?
        @stack.empty?
    end
    def full?
        if @stack.length == @limit
            return true
        else 
            return false
        end
    end
    def search(value)
        @stack.each do |num|
            return @stack.length -[num] - 1 if value==num
        end
        -1
    end

end