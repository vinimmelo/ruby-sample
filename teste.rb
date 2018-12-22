class Camera
  def load
    puts "Winding film."
  end

  def take_picture
    puts "Triggering shutter."
  end
end

class DigitalCamera < Camera
  def load
    puts "Inserting memory card."
  end
end

def teste_camera
  camera = Camera.new
  camera.load
  camera.take_picture
  camera2 = DigitalCamera.new
  camera2.load
  camera2.take_picture
end
#sub >> 4 | Overriding >> 1 | Inheritance >> 2
#superclass >> 3

# test yield use
def make_casserole
  ingredients = yield
  puts "Preheat oven to 375 degrees"
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 minutes"
end

def casserole_use
  make_casserole {"noodles, celery, and tuna"}
  make_casserole do
    "rice, broccoli, and chicken"
  end
end

# p [1, 2, 3, 4, 5].find_all { |number| number.even? }
# p [1, 2, 3, 4, 5].find_all { |number| number.odd? }

def area(options)
  options[:length] * options[:width]
end

puts area({:length => 2, :width => 4})
