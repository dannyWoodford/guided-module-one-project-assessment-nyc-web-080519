class AddColumnsToBountyHunters < ActiveRecord::Migration[5.2]
  def change
    add_column :bounty_hunters, :occupation, :string
    add_column :bounty_hunters, :special_skills, :string
    add_column :bounty_hunters, :bio, :text
  end
end
