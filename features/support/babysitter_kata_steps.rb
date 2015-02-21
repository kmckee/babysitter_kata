Given(/^I am calculating my nightly babysitting charge$/) do
  @calculator = Calculator.new
end

Given(/^the child's bedtime is (.*)$/) do |bedtime|
  @calculator.bedtime = bedtime
end

Given(/^the rate before bedtime is \$(.*) per hour$/) do |rate|
  @calculator.rate_before_bedtime = rate
end

When(/^I babysit from (.*) to (.*)$/) do |start_time, end_time|
  @amount_to_bill = @calculator.get_cost_for(start_time, end_time)
end

Then(/^I should bill \$(.*)$/) do |expected_amount_to_bill|
  expect(@amount_to_bill).to eql expected_amount_to_bill
end

Given(/^the rate from bedtime to midnight is \$(\d+)\.(\d+) per hour$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given(/^the rate from midnight to the end of the job is \$(\d+)\.(\d+) per hour$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I babysit from (\d+):(\d+)am to (\d+):(\d+)am$/) do |arg1, arg2, arg3, arg4|
  pending # express the regexp above with the code you wish you had
end

When(/^I babysit from (\d+):(\d+)pm to (\d+):(\d+)am$/) do |arg1, arg2, arg3, arg4|
  pending # express the regexp above with the code you wish you had
end

