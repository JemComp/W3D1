class Array

    def my_each(blc)
        result = []
        counter = 0

        while counter < self.length
            result[counter] << blc.call(self[counter])
            counter += 1 
        end
        return result
    end

    def my_select(blc)
        result = []
        self.my_each do |elem|
            if blc.call(elem)
                result << elem
            end
        end
        return result
    end

    def my_reject(blc)
        result = []
        self.my_each do |elem|
            if !blc.call(elem)
                result << elem
            end
        end
        return result
    end

end