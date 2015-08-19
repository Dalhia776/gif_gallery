class AddValueAndUserIdToVotes < ActiveRecord::Migration
  def change
  add_column :votes, :user_id, :integer
  add_column :votes, :value, :integer
  end
end
