class FixNotesColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :notes, :note
  end
end
