class Aircraft
  def initialize(model, variant)
    # Instance variables
    @model = model
    @variant = variant
  end
  def takeoff
    if @on_air
      puts "Aircraft #{@model} #{@variant} is already on air !"
    else
      @on_air = true
      puts "Aircraft #{@model} #{@variant} is taking off..."
    end
  end
  def landing
    if !@on_air
      puts "Aircraft #{@model} #{@variant} is already on land !"
    else
      @on_air = true
      puts "Aircraft #{@model} #{@variant} is landing..."
    end
  end
end