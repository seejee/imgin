class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :github
      t.string :github_uid

      t.timestamps
    end

    add_index(:users, :github_uid, :unique => true)
  end
end
