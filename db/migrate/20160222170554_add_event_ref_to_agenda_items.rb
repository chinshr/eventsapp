class AddEventRefToAgendaItems < ActiveRecord::Migration
  def change
    add_reference :agenda_items, :event, index: true
  end
end
