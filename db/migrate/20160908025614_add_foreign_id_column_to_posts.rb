class AddForeignIdColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :poster, foreign_key: true
  end
end
