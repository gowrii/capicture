class AddPhotoToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :photo, :string
  end
end
