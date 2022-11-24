class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_birth
      t.date :date_death

      t.timestamps
    end
  end
end
