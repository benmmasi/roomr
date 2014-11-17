class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, null: false, presence: true

      t.timestamps null: false
    end
  end
end