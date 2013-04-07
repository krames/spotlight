class CreateAdapterConfigurations < ActiveRecord::Migration
  def change
    create_table :adapter_configurations do |t|
      t.string :adapter
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
