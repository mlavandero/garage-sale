class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :sale, index: true
      t.attachment :picture
      t.string :title
      t.text :description
      t.decimal :initial_price, precision: 10, scale: 2
      t.string :currency

      t.timestamps
    end
  end
end
