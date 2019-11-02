class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.text :name
      t.text :category
      t.integer :yr_level
      t.text :topic
      t.integer :user_id

      t.timestamps
    end
  end
end
