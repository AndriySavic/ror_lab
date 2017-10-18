class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :phone
      t.string :email
      t.string :password
      t.string :country
      t.string :city
      t.string :street
      t.string :link
      t.string :gender
      t.string :apt

      t.timestamps
    end
  end
end
