class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :client
      t.string :title
      t.text :description
      t.boolean :active
      t.date :expiration_date

      t.timestamps
    end
  end
end
