class CreateCustomer < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first__name
      t.string :last_name

      t.timestamps
    end
  end
end
