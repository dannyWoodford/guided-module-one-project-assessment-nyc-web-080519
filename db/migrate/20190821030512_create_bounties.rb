class CreateBounties < ActiveRecord::Migration[5.2]
  def change
    create_table :bounties do |t|
      t.string :name
      t.string :status
      t.integer :reward
      t.string :wanted_for
    end
  end
end
