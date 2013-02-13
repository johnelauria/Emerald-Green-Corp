class FixTextingAbility < ActiveRecord::Migration
  def up
  	remove_column :smstexts, :recipient
  	add_column :smstexts, :recipient, :string
  end

  def down
  	remove_column :smstexts, :recipient
  	add_column :smstexts, :recipient, :integer
  end
end
