Given(/^I am calculating my nightly babysitting charge$/) do
  @calculator = Calculator.new
end

Given(/^the child's bedtime is (.*)$/) do |bedtime|
  @calculator.bedtime = bedtime
end

Given(/^the rate before bedtime is \$(.*) per hour$/) do |rate|
  @calculator.rate_before_bedtime = rate
end

Given(/^the rate from bedtime to midnight is \$(.*) per hour$/) do |rate|
  @calculator.rate_after_bedtime = rate
end

Given(/^the rate from midnight to the end of the job is \$(.*) per hour$/) do |rate|
  pending # express the regexp above with the code you wish you had
end

When(/^I babysit from (.*) to (.*)$/) do |start_time, end_time|
  @amount_to_bill = @calculator.get_cost_for(start_time, end_time)
end

Then(/^I should bill \$(.*)$/) do |expected_amount_to_bill|
  expect(@amount_to_bill).to eql expected_amount_to_bill
end
