require 'csv'
require 'ffaker'

def rand_in_range(from, to)
  rand * (to - from) + from
end
def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

Shipper.destroy_all

#import csv
csv_text = File.read('db/matrixrates.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  Shipper.create!(row.to_hash)
end
#custom
[
    ['USA','*','Washington','','',1.0000,1.9000,84.6500,"USPS Express Mail (3-5 Days)"],
    ['USA','*','Washington','','',2.0000,2.9000,84.6500,"USPS Express Mail (3-5 Days)"],
    ['USA','*','California','','',3.0000,3.9000,94.6500,"USPS Priority Mail (6-10 Days)"],
    ['CAN','*','Vancouver','','',4.0000,4.9000,54.6500,"USPS Express Mail (3-5 Days)"],
    ['CAN','*','Vancouver','','',5.0000,5.9000,44.6500,"USPS Priority Mail (6-10 Days)"],
    ['CAN','*','Vancouver','','',6.0000,6.9000,64.6500,"USPS Express Mail (3-5 Days)"],
    ['CAN','*','Ottawa','','',7.0000,7.9000,62.3500,"USPS Priority Mail (6-10 Days)"],
    ['CAN','*','Ottawa','','',8.0000,8.9000,68.6500,"USPS Express Mail (3-5 Days)"],
    ['CAN','*','Torronto','','',9.0000,9.9000,69.6500,"USPS Priority Mail (6-10 Days)"]
].each do |row|
  new_date = {
      country:row[0],region:row[1],city:row[2],
      zip_to:row[3],zip_from:row[4],
      weight_from:row[5],weight_to:row[6],
      price:row[7],delivery_type:row[8]
  }
  Shipper.create!(new_date)
end

100.times do
  User.create(
      first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name,
      age: rand(18..60), cnt_msgs:0, last_visit: rand_time(7.days.ago), email: FFaker::Internet.email
  )
end

