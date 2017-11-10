require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test
  def setup
    @song1 = Song.new( "Womack & Womack", "Teardrops")
  end

  def test_song_name
    assert_equal("Teardrops", @song1.song_name)
  end

  def test_song_artist
    assert_equal("Womack & Womack", @song1.artist)
  end
  
end
