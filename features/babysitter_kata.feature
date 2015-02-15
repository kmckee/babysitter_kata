Feature: Babysitter Kata
  In order to get paid for 1 night of work
  I want to calculate my nightly charge
  As a babysitter

  The babysitter:
   - starts no earlier than 5:00PM
   - leaves no later than 4:00AM

  Background:
    Given the child's bedtime is 9:00pm

    @focus
  Scenario: One hour at the standard rate 
    Given the rate before bedtime is $12.00 per hour
    When I babysit from 5:00pm to 6:00pm
    Then I should be paid $12.00 
  
  Scenario: Multiple hours at the standard rate 
    Given the rate before bedtime is $12.00 per hour
    When I babysit from 5:00pm to 9:00pm
    Then I should be paid $48.00 

  Scenario: One hour between bedtime and midnight
    Given the rate from bedtime to midnight is $8.00 per hour
    When I babysit from 9:00pm to 10:00pm
    Then I should be paid $8.00

  Scenario: Multiple hours between bedtime and midnight
    Given the rate from bedtime to midnight is $8.00 per hour
    When I babysit from 9:00pm to 12:00pm
    Then I should be paid $24.00

  Scenario: One hour after midnight
    Given the rate from midnight to the end of the job is $16.00 per hour
    When I babysit from 12:00am to 1:00am
    Then I should be paid $16.00
  
  Scenario: Multiple hours after midnight
    Given the rate from midnight to the end of the job is $16.00 per hour
    When I babysit from 12:00am to 4:00am
    Then I should be paid $64.00

  Scenario: Only paid in full hour increments
    Given the rate before bedtime is $12.00 per hour
    When I babysit from 6:00pm to 7:30pm
    Then I should be paid $12.00

  # Standard + Post Bedtime + Late Night = Total
  # 48       + 24           + 64         = $136
  Scenario: A full night babysitting
    Given the rate before bedtime is $12.00 per hour
    And the rate from bedtime to midnight is $8.00 per hour
    And the rate from midnight to the end of the job is $16.00 per hour
    When I babysit from 5:00pm to 4:00am
    Then I should be paid $136.00
