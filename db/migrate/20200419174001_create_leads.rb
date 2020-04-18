class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.integer :day
      t.integer :month
      t.string :phone
      t.integer :refer

      t.timestamps
    end
  end
end
