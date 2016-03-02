class AddDescriptionAndNotesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :text
    add_column :events, :notes, :text
  end
end
