class MegaGreeter
    attr_accessor :title

    def initialize(title = "Red")
        @title = title
    end

    def say_traffic
        if @title.nil?
            return puts "There is a power outage in this city"
        elsif @title.respond_to?("each")
            @title.each do |boo|
                puts "There is a car #{boo} in a parking lot."
            end
        else
            puts "Hi bro. its #{@title.capitalize} lamp now"
        end        
    end

    def say_car
        if @title.nil?
            return puts "I didn't see any car crossing the road"
        elsif @title.downcase == "red"
            @title = "honda"
        end

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

    mg.title = "Porsche"
    mg.say_car

    mg.title = ["Green", "Yellow", "Red"]
    mg.say_traffic


    mg.title = nil
    mg.say_traffic
    mg.say_car

end