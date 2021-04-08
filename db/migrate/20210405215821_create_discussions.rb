class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      has_many :likes, as: :likeable
      t.integer :discussion_id
      t.string :theme
      t.text :descripition
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
