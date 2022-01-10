# Datetime is a implementation with timezone!

# Builds a datetime from date and time structs
# If the time zone is not passed it will default to "Etc/UTC"
DateTime.new(~D[2016-05-24], ~T[13:26:08.003], "Etc/UTC") # {:ok, ~U[2016-05-24 13:26:08.003Z]}

# Builds a datetime from date and time structs, raising on errors
# If the time zone is not passed it will default to "Etc/UTC"
DateTime.new!(~D[2016-05-24], ~T[13:26:08.003], "Etc/UTC") # {:ok, ~U[2016-05-24 13:26:08.003Z]}

# Returns the current datetime in UTC
datetime = DateTime.utc_now()
datetime.year
datetime.month
datetime.day
datetime.hour
datetime.minute
datetime.second
datetime.microsecond

# Returns the current datetime in the provided time zone or raises on errors
datetime = DateTime.now!("Etc/UTC")

# Calculates the difference between two datetimes in seconds
DateTime.diff(dt1, dt2)

# Returns:
# :gt if first date is greater than the second
# :lt if first date is less than the second
# :eq if the two dates are equal
DateTime.compare(dt1, dt2)

# Converts a number of gregorian seconds to a DateTime struct
DateTime.from_gregorian_seconds(64222226000) # ~U[2035-02-13 19:13:20Z]

# Converts a DateTime struct to a number of gregorian seconds and microseconds
DateTime.to_gregorian_seconds(dt)

# Converts string to DateTime
DateTime.from_iso8601("2015-01-23T23:50:07Z") # {:ok, ~U[2015-01-23 23:50:07Z], 0}

# Converts the given datetime to ISO 8601 format
# It also supports the "basic" format through passing the :basic option
DateTime.to_iso8601(dt)
DateTime.to_iso8601(dt, :basic)

# Converts the given datetime to a string according to its calendar
DateTime.to_string(dt)

# Converts the given NaiveDateTime to DateTime
DateTime.from_naive(~N[2016-05-24 13:26:08.003], "Etc/UTC") # {:ok, ~U[2016-05-24 13:26:08.003Z]}

# Converts the given datetime into a NaiveDateTime
DateTime.to_naive(dt)

# Converts the given NaiveDateTime to DateTime but raises for invalid timezones
DateTime.from_naive!(~N[2016-05-24 13:26:08.003], "Etc/UTC") # {:ok, ~U[2016-05-24 13:26:08.003Z]}

# Converts a DateTime into a Date
DateTime.to_date(dt)

# Converts a DateTime into Time
DateTime.to_time(dt)

# Changes the time zone of a DateTime
DateTime.shift_zone(~U[2018-07-16 10:00:00Z], "America/Los_Angeles", FakeTimeZoneDatabase)
