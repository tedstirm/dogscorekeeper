class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :first_name,   limit: 100
      t.string :last_name,    limit: 100
      t.string :street,       limit: 100
      t.string :city,         limit: 100
      t.references :state,    index: true
      t.references :country,  index: true
      t.string :number,     limit: 50
      t.string :zip,          limit: 25

      t.timestamps
    end
  end
end
