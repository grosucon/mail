class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :phone
      t.text :message
      t.string :name
      t.string :surname
      t.belongs_to :email

      t.timestamps null: false
    end
  end
end
