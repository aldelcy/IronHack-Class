class AddConcertIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :concert_id, :intger
  end
end
