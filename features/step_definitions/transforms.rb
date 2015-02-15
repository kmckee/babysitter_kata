require 'time'
require 'bigdecimal'

Transform /^\d{1,2}:\d{2}(?:pm|am)$/ do |time_string|
  Time.parse(time_string)
end

Transform /^\d+.\d{2}$/ do |currency_string|
  BigDecimal.new(currency_string)
end
