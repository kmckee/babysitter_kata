Given(/^the child's bedtime is (.*)$/) do |bedtime|
  @calculator.bedtime = bedtime
end

Given(/^the rate before bedtime is \$(.*) per hour$/) do |rate|
  @calculator.rate_before_bedtime = rate
end

When(/^I babysit from (\d+):(\d+)pm to (\d+):(\d+)pm$/) do |arg1, arg2, arg3, arg4|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be paid \$(\d+)\.(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
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

