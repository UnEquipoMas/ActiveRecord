class AddAddressToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :address, :string
  end
end
