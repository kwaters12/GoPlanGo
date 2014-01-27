class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :body
      t.string :address
      t.string :link
      t.string :email
      t.references :city, index: true

      t.timestamps
    end
  end
end
