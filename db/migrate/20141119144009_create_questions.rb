class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt, null: false
      t.string :categor, null: false
      t.string :positive, null: false
      t.string :negative, null: false

      t.timestamps
    end
  end
end
