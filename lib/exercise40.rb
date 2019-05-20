# https://learnrubythehardway.org/book/ex40.html
#

class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each(&method(:puts))
  end
end

happy_bday = Song.new(["Happy bday to u",
                      "I don't wanna get sued",
                      "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
                            "with dollars and bells"])
happy_bday.sing_me_a_song
bulls_on_parade.sing_me_a_song