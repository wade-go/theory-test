class Car
  def initialize(model, color)
    @model = model
    @color = color
    @current_speed = 0
  end
  def speed_up(speed)
    @current_speed += speed
  end

  def speed_down(speed)
    @current_speed -= speed
  end

  def shut_down
    @current_speed = 0
  end
  def current_speed
    @current_speed
  end
  def method_missing(name)
    puts "Method: #{name} is missing"
  end
end

car = Car.new('optimus','white')
p car.current_speed
car.speed_up(20)
p car.current_speed
car.speed_down(10)
p car.current_speed
car.shut_down
p car.current_speed
car.change_color
