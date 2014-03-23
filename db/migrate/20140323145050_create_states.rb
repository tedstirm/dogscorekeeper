class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :alpha2
      t.references :country, index: true

      t.timestamps
    end
  end
end
