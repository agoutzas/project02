class CreateFoldersResources < ActiveRecord::Migration[6.0]
  def change
    create_table :folders_resources, :id => false do |t|
      t.integer :folder_id
      t.integer :resource_id
    end
  end
end
