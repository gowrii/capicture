class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
    	
    	t.string :question
    	t.integer :board_id

      t.timestamps
    end
  end
end
