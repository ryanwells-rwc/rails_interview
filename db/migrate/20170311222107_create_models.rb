class CreateModels < ActiveRecord::Migration
  def change
    create_table :models, id: false do |t|
			t.primary_key :id
      t.string :name
      t.references :make, index: true
      t.string :year_id
      t.string :car_tags
			t.timestamp :created_at
			t.timestamp :updated_at
    end
  end
end
