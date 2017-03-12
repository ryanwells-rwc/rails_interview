class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes, id: false do |t|
			t.primary_key :id
      t.string :name
			t.timestamp :created_at
			t.timestamp :updated_at
      # t.timestamps
    end
  end
end
