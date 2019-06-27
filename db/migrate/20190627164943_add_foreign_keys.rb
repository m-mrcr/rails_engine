class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_reference :transactions, :invoice, foreign_key: true
    add_reference :invoices, :customer, foreign_key: true
    add_reference :invoices, :merchant, foreign_key: true
    add_reference :invoice_items, :item, foreign_key: true
    add_reference :invoice_items, :invoice, foreign_key: true
    add_reference :items, :merchant, foreign_key: true
  end
end
