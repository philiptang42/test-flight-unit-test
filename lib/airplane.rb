class Airplane
  attr_reader :type, :wing_loading, :horsepower, :engine_started
  attr_accessor :fuel
  def initialize(type, wing_loading, horsepower, fuel)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine_started = false
    @flying = false
    @fuel = fuel
  end

    def land
      if @engine_started && @flying && @fuel < 15
        "15 fuel needed to land. we're gonna die!!!"
      elsif @engine_started && @flying
         @flying = false
         @fuel -= 15
        "airplane landed"
      elsif @engine_started
        "airplane already on the ground"
      else
        "airplane not started, please start"
      end
    end

    def takeoff
      if @fuel < 60
        "60 fuel needed to lanch. WE'RE STRANDED!"
      elsif @engine_started
         @flying = true
         @fuel -= 60
        "airplane launched"
      else
        "airplane not started, please start"
      end
    end

    def start
      if @fuel < 20
        "20 fuel needed to start. Engines down..."
      elsif @engine_started
            @fuel -= 20
        "airplane already started"
      else @engine_started = true
        "airplane started"
      end
    end
end
