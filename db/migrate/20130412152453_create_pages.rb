class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :application, index: true
      t.string :title
      t.string :description
      t.string :sidebar
      t.string :footer
      t.string :image

      t.timestamps
    end
  end
end
