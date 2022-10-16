class Dog
    def initialize(hunger_level: 0)
        @hunger_level = hunger_level
    end

    def bark
        "Woof!"
    end

    def feed
        @hunger_level = 0
    end

    def hungryyyyy?
        false
    end

    # rspec accept the test without the s and qns mark 's' and '?'
    def hungrys?
        if @hunger_level > 5
            return true
        else
            return false
        end
    end

    
end