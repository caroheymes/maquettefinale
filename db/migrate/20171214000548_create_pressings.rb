class CreatePressings < ActiveRecord::Migration[5.0]
  def change
    create_table :pressings do |t|
      t.string :region
      t.string :lat
      t.string :lng
      t.string :geoadr
      t.string :geozip
      t.string :geocity
      t.float :couetteapartirde
      t.float :manteauapartirde
      t.float :chemiseapartirde
      t.string :facebook
      t.string :website
      t.text :openinghoursweb
      t.text :clients
      t.string :pressingname
      t.string :phone2
      t.string :phone
      t.text :prestations
      t.string :chmap
      t.timestamps
    end
  end
end
