class AddForeignIdColumnToDislikes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dislikes, :dislikers, foreign_key: true
  end
end
