class CreateFilmsGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :films_genres do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
