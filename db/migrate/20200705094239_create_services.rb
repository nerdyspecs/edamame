class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
	  t.string :customer_info
      t.string :service_name
      t.string :service_description
      t.float :price

      t.timestamps
    end
  end
end
