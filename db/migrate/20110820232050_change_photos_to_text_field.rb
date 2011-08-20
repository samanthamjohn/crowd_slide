class ChangePhotosToTextField < ActiveRecord::Migration
  def self.up
    change_column :sms, :photos, :string, :limit => 5000
  end

  def self.down
  end
end
