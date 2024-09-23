class AddSyncFieldsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :version, :bigint, default: -> { "nextval('global_seqs')" }
    add_column :orders, :version_created, :bigint, default: -> { "nextval('global_seqs')" }
    add_column :orders, :created_at_server, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :orders, :updated_at_server, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :orders, :deleted_at_server, :datetime
    add_column :orders, :push_id, :integer

    add_index :orders, :deleted_at_server
  end
end