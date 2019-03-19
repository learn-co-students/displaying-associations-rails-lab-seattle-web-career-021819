class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    # pluralize(self.songs.count, 'Song')
    self.songs.count
  end
end
