class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.string :insurance_company_name
      t.string :insurance_company_description

      t.timestamps
    end
  end
end
