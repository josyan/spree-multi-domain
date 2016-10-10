class AddColumnsToStores < ActiveRecord::Migration
  def change
    add_column :spree_stores, :logo_content_type, :string
    add_column :spree_stores, :logo_file_size, :integer
  end
end
