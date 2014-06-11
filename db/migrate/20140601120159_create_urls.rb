class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls, :id => false do |t|
      t.text :link, null: false
      t.string :alias, null: false, uniqueness: true
      t.integer :count, default: 0

      t.string :ip
      t.timestamps
    end

    add_index :urls, :link
    add_index :urls, :alias
  end
end
