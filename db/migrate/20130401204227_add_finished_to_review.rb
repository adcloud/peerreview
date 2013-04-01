class AddFinishedToReview < ActiveRecord::Migration

  def change
    change_table :reviews do |t|
      t.boolean :finished, :default => false
    end
  end
end
