# NaiveDatetime is a implementation without timezone!

# Builds a naive datetime from date and time structs
NaiveDateTime.new(~D[2010-01-13], ~T[23:00:07.005])

# Builds a naive datetime from date and time structs but raises for invalid arguments
NaiveDateTime.new!(~D[2010-01-13], ~T[23:00:07.005])
NaiveDateTime.new!(2000, 2, 29, 0, 0, 0)

# Returns the current naive datetime in UTC
naive_datetime = NaiveDateTime.utc_now()
naive_datetime.year
naive_datetime.month
naive_datetime.day
naive_datetime.hour
naive_datetime.minute
naive_datetime.second
naive_datetime.microsecond

# Calculates the difference between two datetimes in seconds. The answer can be returned in any unit.
NaiveDateTime.diff(dt1, dt2, :second)

# Returns:
# :gt if first date is greater than the second
# :lt if first date is less than the second
# :eq if the two dates are equal
NaiveDateTime.compare(dt1, dt2)

# Converts a number of gregorian seconds to a NaiveDateTime struct
NaiveDateTime.from_gregorian_seconds(64222226000) # ~N[2035-02-13 19:13:20]

# Converts a NaiveDateTime struct to a number of gregorian seconds and microseconds
NaiveDateTime.to_gregorian_seconds(dt)

# Converts string to NaiveDateTime
NaiveDateTime.from_iso8601("2015-01-23T23:50:07") # {:ok, ~N[2015-01-23 23:50:07], 0}

# Converts string to NaiveDateTime but raises if the format is invalid
NaiveDateTime.from_iso8601!("2015-01-23T23:50:07") # ~N[2015-01-23 23:50:07]

# Converts the given datetime to ISO 8601 format
# It also supports the "basic" format through passing the :basic option
NaiveDateTime.to_iso8601(dt)
NaiveDateTime.to_iso8601(dt, :basic)

# Converts the given NaiveDateTime to a string according to its calendar
NaiveDateTime.to_string(dt)

# Converts an Erlang datetime tuple to a NaiveDateTime struct
NaiveDateTime.from_erl({{2000, 1, 1}, {13, 30, 15}}) # {:ok, ~N[2000-01-01 13:30:15]}

# Converts a NaiveDateTime into a Date
NaiveDateTime.to_date(dt)

# Converts a NaiveDateTime into Time
NaiveDateTime.to_time(dt)
