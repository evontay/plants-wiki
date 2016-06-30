class AddAttachmentImageToPlants < ActiveRecord::Migration
  def up
    add_attachment :plants, :image
  end

  def down
    remove_attachment :plants, :image
  end
end
