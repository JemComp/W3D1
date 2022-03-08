require "byebug"

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

    def my_zip(*arrs)
        grid = Array.new(arrs.length+1) {Array.new(self.length) }
        my_arrs = [self,*arrs]

        my_arrs.each_with_index do |row,i|
            row.each_with_index do |elem,j|
                # debugger
                grid[j][i] = elem
            end
        end
        return grid[0...self.length]
    end


    def my_rotate(num=1)
        result = self
        while num != 0
            if num < 0
                result = [result[-1]] + result[0...result.length-1]
                num += 1
            else
                result = result[1..result.length] + [result[0]]
                num -= 1
            end
        end
        return result
    end






end
