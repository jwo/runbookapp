class CreateApplications < ActiveRecord::Migration

  def change
    create_table(:applications) do |t|
      t.references :user, index: true
      t.string :name
      t.timestamps
    end

  end

  def self.down
    drop_table :applications
  end
end
