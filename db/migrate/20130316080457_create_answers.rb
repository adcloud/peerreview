class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.references :from_member, index: true
      t.references :for_member, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
