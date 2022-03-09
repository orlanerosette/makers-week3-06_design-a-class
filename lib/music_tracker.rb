class Music
  
  def initialize
    @song_list = []
  end
  
  def add_music(song)
    fail "Please enter a song" if song.empty?
    @song_list.push(song)
  end

  def playlist
    fail "Empty playlist. Please add a song" if @song_list.empty?
    return @song_list
  end
  
end