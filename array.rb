class Array
    def my_flatten
        result =[]
        (0...self.length).each do |i|
            if !self[i].is_a?(Array)
                result << self[i]
            else
                result += self[i].my_flatten
            end
        end
        return result
    end
end