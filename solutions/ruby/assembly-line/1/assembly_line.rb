class AssemblyLine
  CARS_PER_SPEED_LEVEL = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
      @speed * successful_cars_produced
  end

  def successful_cars_produced
    (CARS_PER_SPEED_LEVEL * failure_rate?(@speed))
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / 60
  end

  def failure_rate?(speed)
    if speed <= 4
      1
    elsif speed > 4 && speed <= 8
      0.9
    elsif speed == 9
      0.8
    else
      0.77
    end
  end
end
