[![Maintainability](https://api.codeclimate.com/v1/badges/b54af6c89f266837f99b/maintainability)](https://codeclimate.com/github/cderche/countdowntimer/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b54af6c89f266837f99b/test_coverage)](https://codeclimate.com/github/cderche/countdowntimer/test_coverage)
[![Build Status](https://travis-ci.com/cderche/countdowntimer.svg?branch=master)](https://travis-ci.com/cderche/countdowntimer)

# Countdown Timer

## User Stories
[] User can see an event input box containing an event name field, an date field, an optional time, and a ‘Start’ button.
[] User can define the event by entering its name, the date it is scheduled to take place, and an optional time of the event. If the time is omitted it is assumed to be at Midnight on the event date in the local time zone.
[] User can see a warning message if the event name is blank.
[] User can see a warning message if the event date or time are incorrectly entered.
[] User can see a warning message if the time until the event data and time that has been entered is in the past.
[] User can see a countdown timer if the event date and time are correctly entered.
[] User can click on the 'Save' button.
[] User can see the elements in the countdown timer automatically decrement. For example, when the remaining seconds count reaches 0 the remaining minutes count will decrement by 1 and the seconds will start to countdown from 59. This progression must take place from seconds all the way up to the remaining days position in countdown display.

## Bonus features
[] User can save the event so that it persists across sessions
[] User can see an alert when the event is reached
[] User can specify more than one event.
[] User can see a countdown timers for each event that has been defined.