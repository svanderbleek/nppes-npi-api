class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :number, index: {unique: true}
      t.string :name
      t.string :address
      t.string :phone
      t.string :enum_type
      t.string :taxonomy

      t.timestamps
    end
  end
end
