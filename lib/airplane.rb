class Airplane
  attr_reader :type, :wing_loading, :horsepower, :engine_on
  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine_started = false
    @flying = false
  end

    def land
      if @engine_started && @flying 
         @flying = false
        "airplane landed"
      elsif
        @engine_started
        "airplane already on the ground"
      else
        "airplane not started, please start"
      end
    end

    def takeoff
      if @engine_started
         @flying = true
        "airplane launched"
      else
        "airplane not started, please start"
      end
    end

    def start
      if @engine_started
        "airplane already started"
      else @engine_started = true
        "airplane started"
      end
    end
end
