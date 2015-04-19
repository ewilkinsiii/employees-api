class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :prefix
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :company_name
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
