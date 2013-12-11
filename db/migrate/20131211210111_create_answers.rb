class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :clue_id
      t.string :input

      t.timestamps
    end
  end
end
