class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.text :name
      t.text :category

      t.timestamps
    end
  end
end
