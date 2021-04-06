class CreateMenbers < ActiveRecord::Migration[5.2]
  def change
    create_table :menbers do |t|
      t.string :name
      t.integer :gender
      t.integer :prefectural_id
      t.date :birthday
      t.string :email
      t.text :password
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
