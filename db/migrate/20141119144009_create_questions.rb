class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :category
      t.string :positive
      t.string :negative

      t.timestamps
    end
  end
end
