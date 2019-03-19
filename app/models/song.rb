class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_view
    "#{self.artist_name} - #{self.title}"
  end
end
