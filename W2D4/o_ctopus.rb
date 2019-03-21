
    def sluggish_octopus
        found = false
        fish_dup = @fish.dup
        (fish_dup.length-1).times do
            (0...fish_dup.length-1).each do |i|
                if fish_dup[i] > fish[i+1]
                    fish_dup[i], fish_dup[i+1] = fish_dup[i+1], fish_dup[i] 
                end
            end
        end
        fish_dup[-1]
    end

    def dominant_octopus_help(left, right)
        result = []
        while !left.empty? && !right.empty?
            if left.first > right.first
                result << right.shift
            else
                result << left.shift
            end
        end
        result + left + right
    end

    def dominant_octopus
        return self if @self.length <= 1
        mid = @fish.length / 2
        left(@fish.take(mid))
    end


