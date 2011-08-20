class Sms < ActiveRecord::Base
  serialize :photos, Array

  before_validation_on_create :get_500px_photos

  validates_presence_of :photos

  def get_500px_photos
    self.photos = FiveHundredPx.search(self.body)
  end
end
