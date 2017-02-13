class CreateAdapters < ActiveRecord::Migration
  def change
    create_table :adapters do |t|
      t.string :adress
      t.string :port
      t.string :domain
      t.string :user_name
      t.string :password
      t.belongs_to :site
      t.integer :adapter_type, default: 0

      t.timestamps null: false
    end
  end
end
