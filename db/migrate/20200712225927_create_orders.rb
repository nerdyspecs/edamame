class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
		t.references :employee,null:false, foreign_key: true
		t.references :customer,null:false, foreign_key: true
		t.string :title
		t.string :description
	    t.timestamps
    end
  end
end
