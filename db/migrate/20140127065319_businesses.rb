class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.belongs_to :city
      t.string :name
      t.string :address
      t.string :link

      t.timestamps
    end
  end
end
