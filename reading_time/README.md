# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby
#`reading_time` takes some text and estimates the reading time (assuming 200 words/min)
reading_time_of_text = reading_time(text)
text: a string (e.g. "The cat jumped over the mat")
reading_time_of_text = a float representing time in mins (e.g. 0.5 mins)

#the method returns the time in mins, and does not have side effects.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
reading_time("The cat jumped over the mat") => 0.03 mins
reading_time("The cat jumped over the mat the cat jumped over the mat") => 0.06 mins
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
