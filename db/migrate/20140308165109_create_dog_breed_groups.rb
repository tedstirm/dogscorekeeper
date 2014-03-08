class CreateDogBreedGroups < ActiveRecord::Migration
  def change
    create_table :dog_breed_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
