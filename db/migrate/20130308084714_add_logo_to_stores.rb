class AddLogoToStores < ActiveRecord::Migration
  def up
    add_attachment :spree_stores, :logo
  end

  def down
    remove_attachment :spree_stores, :logo
  end
end
