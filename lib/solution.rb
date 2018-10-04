require 'pry'

def clock_angle(time)
  time_arr = time.split(":")
  hr = time_arr[0]
  min = time_arr[1]
  raise ArgumentError if hr.to_i > 24 || min.to_i > 60
  hr_angle = 360 * (((hr.to_f % 12)/12) + ((min.to_f/60)/12))
  min_angle = min.to_f/60 * 360
  time_angle = hr_angle - min_angle

  time_angle = time_angle + 360 if time_angle < 0
  time_angle = (time_angle - 360) * -1 if time_angle > 180

  time_angle.round(1)
end
clock_angle("12:57")
binding.pry

000
