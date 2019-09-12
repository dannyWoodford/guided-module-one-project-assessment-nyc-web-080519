class CreateBountyJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :bounty_joiners do |t|
      t.integer :bounty_hunter_id
      t.integer :bounty_id
    end
  end
end
