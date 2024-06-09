# Date and Time

# Date and Time are a part of the Ruby core library. The Date class is used to work with dates, and the Time class is    used to work with times. The DateTime class is used to work with both dates and times.

time = Time.new

# Components of a Time
puts "Current Time : " + time.inspect # Information about the current time
puts time.year    # => Year of the date
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.mday    # => 31: Day of the month
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 0-59
puts time.sec     # => 0-59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name
puts time.localtime # Convert to local timezone. / Same as time.inspect
puts time.strftime("%d-%m-%Y \n%D \n%H:%M:%S") # Formatted time
