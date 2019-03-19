class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def format_with_artist
    "#{self.artist.name} - #{self.title}"
  end
end
