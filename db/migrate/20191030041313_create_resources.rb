class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.text :title
      t.text :kind
      t.integer :subject_id
      t.integer :teacher_id



      t.timestamps
    end
  end
end
