class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :likeable_id
      t.string :likeable_type
      t.integer :menber_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
