# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'toiletdataset.csv'), :encoding => 'cp949')
csv = CSV.parse(csv_text, :headers => true, :encoding => 'cp949')
csv.each do |row|
  t = Toilet.new
  t.division = row['division']
  t.name = row['name']
  t.address = row['address']
  t.unisex = row['unisex']
  t.maleflusher = row['maleflusher']
  t.maleurinal = row['maleurinal']
  t.malehandicap = row['malehandicap']
  t.malechild = row['malechild']
  t.femaleflusher = row['femaleflusher']
  t.femalehandicap = row['femalehandicap']
  t.femalechild = row['femalechild']
  t.manager = row['manager']
  t.phonenum = row['phonenum']
  t.time = row['time']
  t.lat = row['lat']
  t.lng = row['lng']
  
  t.save
  puts "#{t.name}, #{t.address} saved"
end

puts "There are now #{Toilet.count} rows in the toilet table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'subway_toilet.csv'), :encoding => 'cp949')
csv = CSV.parse(csv_text, :headers => true, :encoding =>  'cp949')
csv.each do |row|
  s = Subway.new
  s.station = row['station']
  s.tonum = row['tonum']
  s.gate_inner = row['gate_inner']
  s.gate_outer = row['gate_outer']
  s.toi_info = row['toi_info']
  s.exper = row['exper']
  s.save
  puts "#{s.station}, #{s.tonum} saved"
end

puts "There are now #{Subway.count} rows in the subway table"