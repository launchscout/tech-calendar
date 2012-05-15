class AddFeed < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.column :name, :string
      t.column :uri, :string
      t.timestamps
    end
  end
end
