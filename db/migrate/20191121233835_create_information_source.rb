class CreateInformationSource < ActiveRecord::Migration[5.2]
  def change
    create_table :information_source do |t|
      t.string :name

      t.timestamps
    end
  end
end
