# Task Tracker Class Design Recipe
​
## 1. Describe the Problem
​
_Put or write the user story here. Add any clarifying notes you might have._
​
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.
​
As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
​
## 2. Design the Class Interface
​
_Include the initializer and public methods with all parameters and return values._
​
```ruby
# EXAMPLE
​
class Tasks
​
    def initialize
        # initializes an empty array to store my tasks in it
    end
​
    def add_task(text)
        # text is a string
        # adds text to array initialized
    end
​
    def complete(text)
        # text is a string
        # remove from arrays
    end
​
    def list_tasks
        # returns all tasks stored in the array initialized
        # error message if empty
    end
end
```
​
## 3. Create Examples as Tests
​
_Make a list of examples of how the class will behave in different situations._
​
```ruby
# EXAMPLE
​
# 1
task = Tasks
task.add_task("Wash the dishes")
task.list_tasks
# => ["Wash the dishes"]
​
# 2
task = Tasks
task.add_task("")
task.list_tasks
# => Fail with "Please add a task to the list"
​
# 3
task = Tasks
task.add_task("Wash the dishes")
task.add_task("Walk the dog")
task.list_tasks
# => ["Wash the dishes", "Walk the dog"]
​
# 4
task = Tasks
task.add_task("Wash the dishes")
task.add_task("Walk the dog")
task.list_tasks
# => ["Wash the dishes", "Walk the dog"]
task.complete("Wash the dishes")
task.list_tasks
# => ["Walk the dog"]
​
# 5
task = Tasks
task.add_task("Wash the dishes")
task.add_task("Walk the dog")
task.list_tasks
# => ["Wash the dishes", "Walk the dog"]
​
task.complete("Wash the dishes")
task.list_tasks
# => ["Walk the dog"]
​
task.complete("Walk the dog")
task.list_tasks
# => Fail with "Please add a task to the list"
​
# 6
task = Tasks
task.complete("Wash the dishes")
# => Fail with "This task doesn't exist"
```
​
_Encode each example as a test. You can add to the above list as you go._
​
## 4. Implement the Behaviour
​
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._