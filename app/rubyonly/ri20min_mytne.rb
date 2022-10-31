class MegaGreeter
    attr_accessor :title

    def initialize(title = "Red")
        @title = title
    end

    def say_traffic
        puts "Hi bro. its #{@title.capitalize} lamp now"
    end

    def say_car
        puts "911! 911! I saw a #{@title.capitalize} driving at a very high speed"
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_traffic
    mg.say_car

    mg.title = "Green"
    mg.say_traffic

    mg.title = "Yellow"
    mg.say_traffic
end