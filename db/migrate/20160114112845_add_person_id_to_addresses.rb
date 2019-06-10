class AddPersonIdToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :person_id, :integer
  end
end
