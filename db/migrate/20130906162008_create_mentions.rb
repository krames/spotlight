class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :username
      t.integer :adapter_id
      t.string :link
      t.text :blurb
      t.text :content

      t.timestamps
    end
  end
end
