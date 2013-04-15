class AddFolderAndOrderToPage < ActiveRecord::Migration
  def change
    add_column :pages, :folder, :string, default: "", allow_nil: false
    add_column :pages, :order, :string, default: "", allow_nil: false
  end
end
