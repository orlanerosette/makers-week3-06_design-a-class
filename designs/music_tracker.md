# Music Tracker Class Design Recipe
​
## 1. Describe the Problem
​
_Put or write the user story here. Add any clarifying notes you might have._
​
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.
​
## 2. Design the Class Interface
​
_Include the initializer and public methods with all parameters and return values._
​
```ruby
# EXAMPLE
​
class Music
​
    def initialize
        # initializes an empty array to store music I've listened to
    end
​
    def add_music(song)
        # song is a string
        # adds text to array initialized
        # error message if empty
    end
​
    def playlist
        # returns all songs listened to
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
song_tracker = Music
song_tracker.add_music("Despacito")
song_tracker.playlist
# => ["Despacito"]
​
# 2
song_tracker = Music
song_tracker.add_music("")
# => Fail with "Please enter a song"
​
# 3
song_tracker = Music
song_tracker.add_music("Despacito")
song_tracker.add_music("They don't talk about Bruno")
song_tracker.playlist
# => ["Despacito", "They don't talk about Bruno"]
​
# 4
song_tracker = Music
song_tracker.playlist
# => Fail with "Empty playlist. Please add a song"
```
​
_Encode each example as a test. You can add to the above list as you go._
​
## 4. Implement the Behaviour
​
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._