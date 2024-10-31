class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.date :birthdate, null: false
      t.string :job_title, null: false
      t.string :department

      t.timestamps
    end

    add_index :people, [:last_name, :first_name, :birthdate], unique: true
  end
end
