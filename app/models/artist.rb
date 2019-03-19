class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    songs = Song.all.select do |song|
      song.artist_id == self.id
    end
    songs.length
  end


end
