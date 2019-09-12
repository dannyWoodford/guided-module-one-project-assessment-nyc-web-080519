class CreateBountyHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :bounty_hunters do |t|
      t.string :name
      t.integer :net_worth
    end
  end
end
