class AddDimensionsToStoreLogo < ActiveRecord::Migration
  def self.up
    if table_exists?('stores')
      add_column :stores, :logo_width, :integer
      add_column :stores, :logo_height, :integer
    elsif table_exists?('spree_stores')
      add_column :spree_stores, :logo_width, :integer
      add_column :spree_stores, :logo_height, :integer
    end
  end

  def self.down
    if table_exists?('stores')
      remove_column :stores, :logo_width
      remove_column :stores, :logo_height
    elsif table_exists?('spree_orders')
      remove_column :spree_stores, :logo_width
      remove_column :spree_stores, :logo_height
    end
  end
end
