namespace :import do
    desc "imports data from a csv file"
    task :data => :environment do
        require 'csv'
        CSV.foreach("#{Rails.root}/lib/assets/donnee.csv", :encoding => 'windows-1251:utf-8') do |row|
                region = row[0]
                lat = row[1]
                lng  = row[2]
                geoadr = row[3]
                geozip = row[4]
                geocity = row[5]
                placeid = row[6]
                couetteapartirde = row[7]
                manteauapartirde = row[8]
                chemiseapartirde = row[9]
                facebook = row[10]
                website = row[10]
                openinghoursweb = row[12]
                clients = row[13]
                pressingname = row[14]
                phone2 = row[15]
                phone = row[16]
                prestations = row[17]
                chmap = row[18]
                Pressing.create!(region: region, lat: lat,lng: lng, geoadr: geoadr, geozip: geozip, geocity: geocity, 
                couetteapartirde: couetteapartirde, manteauapartirde: manteauapartirde, chemiseapartirde: chemiseapartirde, 
                facebook: facebook, website: website, openinghoursweb: openinghoursweb, clients: clients, pressingname: pressingname,
                phone2: phone2, prestations: prestations,  chmap: chmap)
                puts row.inspect
            end
        end
                
end