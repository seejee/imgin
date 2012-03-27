class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :description
      t.string :filename
      t.references :user

      t.timestamps
    end
  end
end
