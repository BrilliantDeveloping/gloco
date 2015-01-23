class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :image
      t.string :name
      t.string :category
      t.text :about
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
