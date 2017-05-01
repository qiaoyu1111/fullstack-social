class AddInvitationsCountAndEvaluationsCountToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :invitations_count, :integer, default: 0
    add_column :users, :evaluations_count, :integer, default: 0
  end
end
