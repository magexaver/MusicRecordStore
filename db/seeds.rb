users = [
  { first_name: 'User', last_name: 'User', phone_number: '+380980000000', email: 'user@example.com'  },
  { first_name: 'Manager', last_name: 'Manager', phone_number: '+380980000001', email: 'manager@example.com', role: :manager  },
  { first_name: 'Admin', last_name: 'Admin', phone_number: '+380980000002', email: 'admin@example.com',  role: :admin  }
]

users.each do |user|
  User.create! user
end

music_records = [
  { title: 'Record 1', price: 9.99, damage_assessment: :excellent },
  { title: 'Record 2', price: 0.99, damage_assessment: :good },
  { title: 'Record 3', price: 0.55, damage_assessment: :poor }
]

music_records.each do |music_record|
  MusicRecord.create! music_record
end

user = User.find_by_role :user

user.orders.build(music_record: MusicRecord.first).save!
user.orders.build(music_record: MusicRecord.second).save!
user.rented_music_records.build(music_record: MusicRecord.last, rent_date: Date.current, damage_assessment: :poor, price: 0.55).save!
