class ModifyMembers < ActiveRecord::Migration

  def change
    change_table :members do |t|
	  	t.references :team, index: true
    end
  end
end
