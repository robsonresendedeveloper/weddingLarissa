class CreateConfirmations < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmations do |t|
      t.string :name
      t.string :quantity
      t.string :telephone

      t.timestamps
    end
  end
end
