class Vehicle
    def initialize(vehicle)
        @my_vehicle = vehicle
    end




end

class Car
    def initialize(car, model )
        @my_car = car
        @wheels = 4
        @model_year = model
        @lights = 'off'
        @turn_signal = "off"
        @speed = 0
    end

    def get_wheels
        @wheels
    end

    def get_model
        @model_year
    end

    def get_lights
        @lights
    end

    def set_lights
        @lights == 'off' ? 'on' : 'off'
    end

    def get_turn_signal
        @turn_signal
    end

    def set_turn_signal
        puts 'choose which side to turn'
        side = gets.chomp
        @turn_signal = side
    end

    def get_speed
        @speed
    end

    def display
        "The car is #{@my_car} it has #{@wheels} wheels and its speed is #{@speed}"
     end

     def model_type_year
         "{#{@my_car}: #{@model_year}}"
     end


end

class Tesla < Car
    def initialize(car, model )
        super(car, model)
        @my_tesla = car
        @model_year = model
    end

    def accel
        @speed += 10
    end

    def decel
        @speed -= 7
    end

end

class Honda < Car
    def initialize(car, model)
        super(car, model)
        @my_honda = car
        @model_year = model
    end

    def accel
        @speed += 2
    end

    def decel
        @speed -= 1.25
    end
end

class Toyota < Car
    def initialize(car,model)
        super(car, model)
        @my_toyota = car
        @model_year = model
    end

    def accel
        @speed += 7
    end

    def decel
        @speed -= 5
    end

end



the_car = Toyota.new('toyota', 1984)
# p the_car.get_wheels
# p the_car.get_model
# the_car.accel
# the_car.decel
# p the_car.get_speed
# p the_car.display
# p the_car.class

garage = [Toyota.new('toyota tacoma', 2013), Toyota.new('toyota carolla', 2007),Honda.new('honda crv', 2009), Honda.new('honda accord', 1978), Tesla.new('tesla model T', 2019), Tesla.new('tesla truckla', 2020)]

sorted_garage = garage.sort_by{|elm| elm.get_model}.each {|e| p e.model_type_year}

puts "\n"

sorted_garage = garage.sort_by {|elm| elm.class.to_s}.each {|el| p el.model_type_year}

sorted_garage = garage.sort_by {|e| [e.class.to_s,e.get_model]}.each {|e| p e.model_type_year}
