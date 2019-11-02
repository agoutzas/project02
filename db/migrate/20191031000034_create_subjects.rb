class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :Subjects do |t|
      t.text :category


      t.timestamps
    end
  end
end
