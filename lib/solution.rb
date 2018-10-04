require 'pry'

def clock_angle(time)
    # code your solution here
    t = time.split(":")
    # binding.pry
    h = t[0].to_f
    m = t[1].to_f
    # binding.pry
    angle = (h*30)+(0.5*m)-(m*6)
    angle -= 360 if angle > 180
    angle.abs

    # if h == 12.0 and m == 0.0
    #   angle = 0
    # elsif angle > 180
    #   angle -= 180
    #   # binding.pry
    # else
    #   angle
    # end
end
