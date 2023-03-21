class ChangeTypeToEventType < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :type, :string
    add_column :events, :event_type, :string
  end
end
