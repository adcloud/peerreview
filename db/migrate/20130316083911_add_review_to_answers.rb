class AddReviewToAnswers < ActiveRecord::Migration
  def change
    change_table :answers do |t|
	  	t.references :review, index: true
    end
  end
end
