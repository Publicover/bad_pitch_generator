class CreateAdjectives < ActiveRecord::Migration[6.1]
  def change
    create_table :adjectives do |t|
      t.string :word

      t.timestamps
    end
  end
end
