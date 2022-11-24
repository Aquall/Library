class CreateBooksPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :books_people do |t|
      t.references :people, null: false, foreign_key: true
      t.references :books, null: false, foreign_key: true

      t.timestamps
    end
  end
end
