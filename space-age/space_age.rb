class SpaceAge

  def initialize(input_age)
    @input_age = input_age
  end

  def seconds
    @input_age
  end

  def on_earth
    (@input_age.to_f/31557600.to_f).round(2)
  end

  def on_mercury
    mercury_years = ((@input_age.to_f/31557600.to_f) / 0.2408467).round(2)
  end

  def on_venus
    venus_years = ((@input_age.to_f/31557600.to_f) / 0.61519726).round(2)
  end

  def on_mars
    mars_years = ((@input_age.to_f/31557600.to_f) / 1.8808158).round(2)
  end

  def on_jupiter
    jupiter_years = ((@input_age.to_f/31557600.to_f) / 11.862615).round(2)
  end

  def on_saturn
    saturn_years = ((@input_age.to_f/31557600.to_f) / 29.447498).round(2)
  end

  def on_uranus
    uranus_years = ((@input_age.to_f/31557600.to_f) / 84.016846).round(2)
  end

  def on_neptune
    neptune_years = ((@input_age.to_f/31557600.to_f) / 164.79132).round(2)
  end

end
