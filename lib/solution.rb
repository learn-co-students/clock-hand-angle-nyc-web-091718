require 'pry'
def clock_angle(time)
    time = split_time(time)

end

def split_time(time)
  hash = {}
  #Parse the string along the colon.  Convert each string into an integer
  time_array = time.split(":")
  hash[:hour] =  time_array[0].to_i
  hash[:minute] =  time_array[1].to_i
  #The hour hand has 720 positions, every 12th of which can be occupied by the minute hand.
  hash
  calculate_angle(hour_angle(hash[:hour],hash[:minute]),minute_angle(hash[:minute]))

end

def calculate_angle(hour_hand,minute_hand)

  angle = 0

  if hour_hand == minute_hand
  angle =    0
  elsif hour_hand > minute_hand
    angle = hour_hand - minute_hand
  else
    angle = minute_hand - hour_hand
  end

  if(angle > 180)
    angle = 360.to_f - angle.to_f
  end
  angle
end

def minute_angle(minutes)
  minut_hand_angle = (minutes.to_f * 1/60) * 360
end

def hour_angle (hour, minutes)
  # if(hour == 12)
  #   hour = 0
  # end
  hour_hand_angle = ((hour.to_f * 1/12) * 360) + ((minutes.to_f * 1/720) * 360)
end
