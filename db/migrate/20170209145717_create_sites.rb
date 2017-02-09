class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :password
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
