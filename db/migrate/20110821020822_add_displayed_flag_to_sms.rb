class AddDisplayedFlagToSms < ActiveRecord::Migration
  def self.up
    add_column :sms, :displayed, :boolean, :default => false
  end

  def self.down
    remove_column :sms, :displayed
  end
end
