def world_time(time, jst)
  (time + jst * 3600).strftime("%Y/%m/%d %H:%M:%S")
end
