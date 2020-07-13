class CreateEmployeeCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_customers do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
