class CreateDogBreeds < ActiveRecord::Migration
  def change
    create_table :dog_breeds do |t|
      t.string :name
      t.references :dog_breed_group, index: true

      t.timestamps
    end
  end
end
