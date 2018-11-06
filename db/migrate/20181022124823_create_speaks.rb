class CreateSpeaks < ActiveRecord::Migration[5.1]
  def change
    create_table :speaks do |t|
      t.string :content

      t.timestamps
    end
  end
end
