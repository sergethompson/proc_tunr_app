class CreateSongRecordings < ActiveRecord::Migration
  def change
    create_table :song_recordings do |t|
      t.string :name
      t.integer :album_id

      t.timestamps
    end
  end
end
