def clock_angle(time)
  hour_minute = time.split(":")
  hour = hour_minute[0].to_f
  minute = hour_minute[1].to_f

  if hour == 12
    hour = 0
  end

  hour_angle = (hour * 30) + (minute * 0.5)
  minute_angle = (6 * minute)

  angle = hour_angle - minute_angle
  if angle.abs > 180
    360 - angle.abs
  else
    angle.abs
  end
end

clock_angle("12:37")
