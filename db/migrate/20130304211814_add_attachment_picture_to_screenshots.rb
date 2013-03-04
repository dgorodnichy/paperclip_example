class AddAttachmentPictureToScreenshots < ActiveRecord::Migration
  def self.up
    change_table :screenshots do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :screenshots, :picture
  end
end
