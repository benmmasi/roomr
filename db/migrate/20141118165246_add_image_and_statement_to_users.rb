class AddImageAndStatementToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :personal_statement, :string
  end
end
