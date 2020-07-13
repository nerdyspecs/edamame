class AddOrderReferenceToInvoice < ActiveRecord::Migration[6.0]
  def change
  	add_reference :invoices, :orders
  end
end
