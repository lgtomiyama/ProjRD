class CreateSalesforceContacts < ActiveRecord::Migration
  def change
    create_table :salesforce_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps null: false
    end
  end
end
