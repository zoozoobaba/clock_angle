def clock_angle(hour, minute)
  hours_in_degrees = (hour % 12) * 30
  minutes_in_degrees = minute * 6
  
  degrees_apart = (hours_in_degrees - minutes_in_degrees).abs
  if degrees_apart <= 180
    return degrees_apart
  elsif hours_in_degrees > 180
    return (360 - hours_in_degrees) + minutes_in_degrees
  else
    return (360 - minutes_in_degrees) + hours_in_degrees
  end
end

clock_angle(15, 30)
