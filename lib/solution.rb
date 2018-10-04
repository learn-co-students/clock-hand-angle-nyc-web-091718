
def clock_angle(time)
    #6 degrees per minute
    #30 degrees per hour
    hours_mins = time.split(":")
    hours_mins = hours_mins.map {|x| x.to_i}
    hours = hours_mins[0]
  #  binding.pry
    if hours_mins[1] != 0
      minutes = hours_mins[1].to_f
    else
      minutes = hours_mins[1]
    end

    a = (hours * 60 + minutes)*0.5
    b = (minutes * 6)
    solution = a - b
    solution = solution.abs
    if solution >= 360
      solution -= 360
    elsif solution > 180 && solution < 360
      solution -= 180
    end
    solution

end
