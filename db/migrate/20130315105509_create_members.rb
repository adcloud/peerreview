class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.references :role, index: true

      t.timestamps
    end
  end
end
