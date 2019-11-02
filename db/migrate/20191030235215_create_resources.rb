class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.text :category
      t.text :topic
      t.integer :yr_level
      t.text :type

      t.timestamps
    end
  end
end
