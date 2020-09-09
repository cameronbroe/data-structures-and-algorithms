module Cameron
  class LinkedList
    class Node
      attr_reader :value
      attr_accessor :next

      def initialize(value)
        @value = value
        @next = nil
      end
    end

    attr_reader :head
    attr_reader :size

    def initialize
      @head = nil
      @size = 0
    end

    def append(value)
      if @head.nil?
        @head = Node.new(value)
      else
        current_node = @head
        until current_node.next.nil?
          current_node = current_node.next
        end
        current_node.next = Node.new(value)
      end
      @size += 1
    end

    def get(index)
      return nil if @head.nil?
      return nil if index >= self.size

      current_node = @head
      index.times do
        current_node = current_node.next
      end
      current_node.value
    end
  end
end