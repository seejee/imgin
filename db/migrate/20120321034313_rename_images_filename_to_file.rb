class RenameImagesFilenameToFile < ActiveRecord::Migration
  def up
    rename_column :images, :filename, :file
  end

  def down
    rename_column :images, :file, :filename
  end
end
