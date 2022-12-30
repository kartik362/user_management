class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :lname
      t.string  :email
      t.text    :address_1
      t.text    :address_2
      t.string  :city
      t.string  :state
      t.string  :country
      t.integer :pincode
      t.integer :phone
      t.timestamps
    end
  end
end
