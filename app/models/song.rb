class Song < ActiveRecord::Base
  belongs_to :artist

  def to_s
    self.name
  end

  def artist_name
    self.artist.name
  end
end
