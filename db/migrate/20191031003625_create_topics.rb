class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.text :topic
      t.integer :yr_level
      t.text :type


      t.timestamps
    end
  end
end
