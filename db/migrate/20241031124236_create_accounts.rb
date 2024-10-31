class CreateAccounts < ActiveRecord::Migration[7.2]
  def change
    create_table :accounts do |t|
      t.boolean :enabled, null: false, default: false
      t.citext :email, null: false
      t.citext :username, null: false
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
    add_index :accounts, :email, unique: true
    add_index :accounts, :username, unique: true
  end
end
