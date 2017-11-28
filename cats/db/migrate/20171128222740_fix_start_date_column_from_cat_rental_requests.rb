class FixStartDateColumnFromCatRentalRequests < ActiveRecord::Migration[5.1]
  def change 
    rename_column :cat_rental_requests, :star_date, :start_date
    add_timestamps :cat_rental_requests, null: false
  end
end
