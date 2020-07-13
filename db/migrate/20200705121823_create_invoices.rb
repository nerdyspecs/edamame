class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
    	t.references :employer, null: false, foreign_key: {to_table: :users}
    	t.references :customer, index: true, foreign_key: {to_table: :users}
    	t.string :description
      t.timestamps
    end
  end
end
