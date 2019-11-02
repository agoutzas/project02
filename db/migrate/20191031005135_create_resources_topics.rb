class CreateResourcesTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :resources_topics, :id => false do |t|
      t.integer :topic_id
      t.integer :resource_id
    end
  end
end
