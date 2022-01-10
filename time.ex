# Builds a new time
Time.new(21, 15, 12, 0)  # {:ok, ~T[21:15:12.000000]}

# Builds a new time but raises if the time is invalid.
Time.new!(12, 28, 14, 0) # {:ok, ~D[2000-01-01]}

# Current time
time = Time.utc_now() # format: ~D[2027-05-12]
time.hour
time.minute
time.second

# Adds the number of units to the given time
Time.add(~T[10:00:00], 27000) # ~T[17:30:00.000000]

# Returns the difference between two times, considering only the hour, minute, second and microsecond
Time.diff(~T[00:29:12], ~T[00:29:10]) # 2

# Returns:
# :gt if first time is greater than the second
# :lt if first time is less than the second
# :eq if the two times are equal
Time.compare(~T[16:04:16], ~T[16:04:28]) # :lt

# Converts string to Time
TIme.from_iso8601("23:50:07") # {:ok, ~T[23:50:07]}

# Converts string to Time but raises if the format is invalid
Time.from_iso8601!("23:50:07.123Z") # ~T[23:50:07.123]

# Converts the given time to ISO 8601:2019
# By default, returns time formatted in the "extended" format
# It also supports the "basic" format through passing the :basic option
Time.to_iso8601(~T[23:00:13.001]) # "23:00:13.001"
Time.to_iso8601(~T[23:00:13.001], :basic) # "230013.001"

# Converts the given time to a string]
Time.to_string(~T[23:00:00]) # "23:00:00"

# Converts given time to an Erlang time tuple
Time.to_erl(~T[23:30:15.999]) # {23, 30, 15}

# Converts an Erlang time tuple to a Time struct
Time.from_erl({23, 30, 15}, {5000, 3}) # {:ok, ~T[23:30:15.005]}

# Converts an Erlang time tuple to a Time struct but raises for invalid times
Time.from_erl!({23, 30, 15}) # ~T[23:30:15]
