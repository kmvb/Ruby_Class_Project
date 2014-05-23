class AddAttachmentAvatarToProfiles < ActiveRecord::Migration
  def self.up
    #change_table :profiles do |t|
      add_attachment :profiles, :avatar
    #end
  end

  def self.down
    drop_attached_file :profiles, :avatar
  end
end
