Feature: Babysitter Kata
  In order to get paid for 1 night of work
  I want to calculate my nightly charge
  As a babysitter

  The babysitter:
   - starts no earlier than 5:00PM
   - leaves no later than 4:00AM
   - gets paid $12/hour from start-time to bedtime
   - gets paid $8/hour from bedtime to midnight
   - gets paid $16/hour from midnight to end of job
   - gets paid for full hours (no fractional hours)

  Background:
    Given the child's bedtime is 9:00pm

  Scenario: One hour at the standard rate 
    Given I start babysitting at 5:00pm
    When I finish at 6:00pm
    Then I should be paid $12.00 
  
  Scenario: Multiple hours at the standard rate 
    Given I start babysitting at 5:00pm
    When I finish at 9:00pm
    Then I should be paid $48.00 

  Scenario: One hour between bedtime and midnight
    Given I start babysitting at 9:00pm
    When I finish at 10:00pm
    Then I should be paid $8.00

  Scenario: Multiple hours between bedtime and midnight
    Given I start babysitting at 9:00pm
    When I finish at 12:00am
    Then I should be paid $24.00

  Scenario: One hour after midnight
    Given I start babysitting at 12:00am
    When I finish at 1:00am
    Then I should be paid $16.00
  
  Scenario: Multiple hours after midnight
    Given I start babysitting at 12:00am
    When I finish at 4:00am
    Then I should be paid $64.00

  Scenario: Only paid in full hour increments
    Given I start babysitting at 6:00pm
    When I finish at at 7:30pm
    Then I should be paid $12.00

  # Standard + Post Bedtime + Late Night = Total
  # 48       + 24           + 64         = $136
  Scenario: A full night babysitting
    Given I start babysitting at at 5:00pm
    When I finish at 4:00am
    Then I should be paid $136.00
