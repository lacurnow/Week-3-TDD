# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string @TODO.

## 2. Design the Method Signature

```ruby
tracked_tasks = task_tracker(text)

* text is a string containing words "@TODO walk the dog"
* tracked_tasks returns true
```

## 3. Create Examples as Tests
```ruby
#1
task_tracker("@TODO walk the dog")
# => true
#2
task_tracker("walk the dog")
# => false
#3
task_tracker("@ToDO walk the dog")
# => false
#4
task_tracker("")
# => false
#5
task_tracker(nil)
# throws an error "No input given."
```
