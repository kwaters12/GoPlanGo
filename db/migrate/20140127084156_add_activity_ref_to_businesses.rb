class AddActivityRefToBusinesses < ActiveRecord::Migration
  def change
    add_reference :businesses, :activity, index: true
  end
end
