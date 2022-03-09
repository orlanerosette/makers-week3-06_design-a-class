require 'music_tracker'

RSpec.describe Music do

  context "when a song is listened to" do
    it "is added to the playlist" do
      song_tracker = Music.new
      song_tracker.add_music("Despacito")
      expect(song_tracker.playlist).to eq ["Despacito"]
    end
  end

  context "when another song is listened to" do
    it "is added to the playlist" do
      song_tracker = Music.new
      song_tracker.add_music("Despacito")
      song_tracker.add_music("They don't talk about Bruno")
      expect(song_tracker.playlist).to eq ["Despacito", "They don't talk about Bruno"]
    end
  end

  context "when an empty string is given as a song" do
    it "fails" do
      song_tracker = Music.new
      expect { song_tracker.add_music("") }.to raise_error "Please enter a song"
    end
  end

  context "when a playlist that doesn't hold any song is called" do
    it "fails" do
      song_tracker = Music.new
      expect { song_tracker.playlist }.to raise_error "Empty playlist. Please add a song"
    end
  end
  
end