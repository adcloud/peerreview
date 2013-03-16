class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :member, index: true

      t.timestamps
    end
  end
end
