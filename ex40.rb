class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

# instantiate operation
happy_bday = Song.new(["Happy birthday to you",
            "I don't want to get sued",
            "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
                  "With pockets full of shells"])

midnight_song = ["Maybe I", "Find a way", "To live better day"]

midnight_song_class = Song.new(midnight_song)

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

midnight_song_class.sing_me_a_song()
