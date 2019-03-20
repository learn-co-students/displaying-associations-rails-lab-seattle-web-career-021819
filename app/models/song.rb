class Song < ActiveRecord::Base
  belongs_to :artist

  after_create :artist_name

  def artist_name
    self.artist.name
  end
end
