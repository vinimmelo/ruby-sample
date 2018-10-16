def accelerate
  puts 'Speeding on the gas'
  puts 'Speeding Up'
end

def sound_horn
  puts 'Press the horn button'
  puts 'Beep Beep'
end

def use_headlights(brightness = 'high-beam')
  puts "Turning on #{brightness} headlights"
  puts 'Watch out for deer'
end

accelerate
sound_horn
use_headlights('low-beam')