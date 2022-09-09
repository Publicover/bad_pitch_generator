class CreateNouns < ActiveRecord::Migration[6.1]
  def change
    create_table :nouns do |t|
      t.string :word

      t.timestamps
    end
  end
end
