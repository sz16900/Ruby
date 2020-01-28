# To Get Current Time you just create a new Time object with no parameters or use Time.now, which is the same thing:
Time.new
puts Time.now

# Time gives you some handy methods to ask it questions. Almost all of them are very intuitive, so the general rule is "if you think the method should exist, it probably does":
puts my_time = Time.now
puts my_time.year
puts my_time.month
puts my_time.day
puts my_time.wday
puts my_time.hour
puts my_time.min
puts my_time.sec

# Time also takes inputs if you want to create a specific time, from year to time zone:
Time.new(2012,2,14)

# You can add and subtract times just like they were numbers (because, remember, they basically are... just the number of seconds since 1970):
vday = Time.new(2012,2,14)
vday+3600   
xmas = Time.new(2020,12,25)
puts ( xmas - Time.now )/60/60/24.to_i

# What if you want to display a date in a pretty way, like on your website or for your user's benefit? There are a couple of baked in methods and then a "build-your-own-adventure" way to specify:
puts nownow = Time.now
puts nownow.ctime     
puts nownow.utc
puts nownow.strftime("%Y-%m-%d %H:%M:%S")