# Builds a new ISO date
Date.new(2000, 1, 1) # {:ok, ~D[2000-01-01]}

# Builds a new ISO date but raises if the format is invalid
Date.new!(2000, 1, 1) # {:ok, ~D[2000-01-01]}

# Current day
today = Date.utc_today() # format: ~D[2027-05-12]
today.day
today.month
today.year

# Returns true if the year in the given date is a leap year
Date.leap_year?(~D[2000-01-01]) # true

# Adds the number of days to the given date
Date.add(~D[2022-01-10], 5) # ~D[2022-01-15]

# Returns the number of days in the given date month
Date.days_in_month(~D[1900-01-13]) # 31

# Calculates the quarter of the year of a given date
Date.quarter_of_year(~D[2016-10-31]) # 4

# Calculates the difference between two dates, in a full number of days
Date.diff(~D[2022-01-17], ~D[2022-01-10]) # 7

# Returns a range of dates
range = Date.range(~D[2019-01-12], ~D[2019-07-15]) # DateRange<~D[2019-01-12], ~D[2019-07-15]>
Enum.count(range) # 185

# Calculates the first day of the month for the given date
Date.beginning_of_month(~D[2017-05-19]) # ~D[2017-05-01]

# Calculates the last day of the month for the given date
Date.end_of_month(~D[2000-01-31]) # ~D[2000-01-31]

# Calculates the first day of the week for the given date
Date.beginning_of_week(~D[2017-05-19]) # ~D[2017-05-15]

# Calculates the last day of the week for the given date
Date.end_of_week(~D[2020-07-05]) # ~D[2020-07-05]

# Returns:
# :gt if first date is greater than the second
# :lt if first date is less than the second
# :eq if the two dates are equal
Date.compare(~D[2016-04-16], ~D[2016-04-28]) # :lt

# Converts string to Date
Date.from_iso8601("2015-01-23") # {:ok, ~D[2015-01-23]}

# Converts string to Date but raises if the format is invalid
Date.from_iso8601!("2015-01-23") # ~D[2015-01-23]

# Converts the given date to ISO 8601:2019
# By default, returns dates formatted in the "extended" format
# It also supports the "basic" format through passing the :basic option
Date.to_iso8601(~D[2000-02-28])         # "2000-02-28"
Date.to_iso8601(~D[2000-02-28], :basic) # "20000228"

# Converts the given date to a string according to its calendar
Date.to_string(~D[2000-02-28]) # "2000-02-28"

# Converts the given date to an Erlang date tuple
Date.to_erl(~D[2000-01-01]) # {2000, 1, 1}

# Converts an Erlang date tuple to a Date struct
Date.from_erl({2000, 1, 1})  # {:ok, ~D[2000-01-01]}

# Converts an Erlang date tuple but raises for invalid dates
Date.from_erl!({2000, 1, 1}) # ~D[2000-01-01]
