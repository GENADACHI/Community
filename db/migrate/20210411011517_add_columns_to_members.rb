class AddColumnsToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :postcode, :integer
    add_column :members, :prefecture_code, :integer
    add_column :members, :address_city, :string
    add_column :members, :address_street, :string
    add_column :members, :address_building, :string
  end
end
