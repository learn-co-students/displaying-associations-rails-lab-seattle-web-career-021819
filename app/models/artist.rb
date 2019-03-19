class Artist < ActiveRecord::Base
  has_many :songs

  def to_s
    self.name
  end
  
  def song_count
    self.songs.count
  end
end
