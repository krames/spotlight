class RenameMentionSourceId < ActiveRecord::Migration
  def change
    rename_column :mentions, :adapter_id, :adapter_configuration_id
  end
end
