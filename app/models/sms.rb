class Sms < ActiveRecord::Base
  serialize :photos, Array

  before_validation :get_500px_photos, on: :create

  validates_presence_of :photos

  scope :undisplayed, where(:displayed => false).order("created_at DESC")

  def get_500px_photos
    self.photos = FiveHundredPx.search(self.body)
  end
end
