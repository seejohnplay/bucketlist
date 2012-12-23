class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :status
      t.integer :list_id

      t.timestamps
    end
  end
end
