class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :school
      t.integer :yr_level
      t.text :email
      t.text :photo
      t.string :password_digest

      t.timestamps
    end
  end
end
