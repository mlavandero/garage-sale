class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :mobile_phone
      t.string :landline_phone

      t.timestamps
    end
  end
end
