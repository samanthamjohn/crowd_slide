class AddUrlsToSms < ActiveRecord::Migration
  def self.up
    add_column :sms, :photos, :string
  end

  def self.down
    remove_column :sms, :photos
  end
end
