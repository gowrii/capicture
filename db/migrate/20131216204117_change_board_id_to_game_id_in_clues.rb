class ChangeBoardIdToGameIdInClues < ActiveRecord::Migration
  def change
  	change_table :clues do |t|
	  	t.rename :board_id, :game_id
  	end
  end
end
