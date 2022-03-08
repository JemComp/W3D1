class Array

    def my_each(&blc)
        result = []
        counter = 0

        while counter < self.length
            result << blc.call(self[counter])
            counter += 1 
        end
        return result
    end

    def my_select(&blc)
        result = []
        self.my_each do |elem|
            if blc.call(elem)
                result << elem
            end
        end
        return result
    end

    def my_reject(&blc)
        result = []
        self.my_each do |elem|
            if !blc.call(elem)
                result << elem
            end
        end
        return result
    end

    def my_any?(&blc)
        self.my_each do |elem|
            return true if blc.call(elem)
        end
        return false
    end

    def my_all?(&blc)
        self.my_each do |elem|
            return false if !blc.call(elem)
        end
        return true
    end


end
