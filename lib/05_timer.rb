def time_string(t)
    # https://ruby-doc.org/core-2.6.3/Time.html
    # H Hour M Minute S Second
    # time using .at which takes the number of seconds
    # t.utc => 00:00:20 ---- t = Time.at(20) 
    # Time.at(1234).strftime "%M:%S"   # This returns a String 
    Time.at(t).utc.strftime("%H:%M:%S")
end