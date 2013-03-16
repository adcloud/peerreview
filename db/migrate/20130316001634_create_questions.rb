class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :section
      t.references :fromrole, index: true
      t.references :forrole, index: true

      t.timestamps
    end
  end
end
