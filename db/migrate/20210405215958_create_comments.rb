class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      has_many :likes, as: :likeable
      t.belongs_to :discussion
      t.belongs_to :menber
      t.integer :discussion_id
      t.integer :menber_id
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
