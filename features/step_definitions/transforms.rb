require 'time'

Transform /^\d{1,2}:\d{2}(?:pm|am)$/ do |time_string|
  Time.parse(time_string)
end
