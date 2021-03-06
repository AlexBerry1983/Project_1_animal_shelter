require('pry-byebug')
require_relative('../models/owner')
require_relative('../models/animal')

 Owner.delete_all()
 Animal.delete_all()

 owner1 = Owner.new({
   'name' => 'Animal Shelter',
   'address' => 'Royal Mile'
 })

 owner2 = Owner.new({
   'name' => 'Angus',
   'address' => '23 made up street'
 })

 owner3 = Owner.new({
   'name' => 'Paul',
   'address' => '42 imagination drive'
 })

 owner4 = Owner.new({
   'name' => 'Leon',
   'address' => '31 cant be serious close'
 })

  owner1.save
  owner2.save
  owner3.save
  owner4.save 

 animal1 = Animal.new({
   'name' => 'Scrappy',
   'type' => 'Cat',
   'admission_date' => 'March 21 2017',
   'adoptable' => true,
   'owner_id' => owner2.id
 })

 animal2 = Animal.new({
   'name' => 'Albert',
   'type' => 'Chicken',
   'admission_date' => 'May 2 2017',
   'adoptable' => true,
   'owner_id' => owner3.id
   
 })

 animal3 = Animal.new({
   'name' => 'Ruffles',
   'type' => 'Dog',
   'admission_date' => 'March 21 2017',
   'adoptable' => true,
   'owner_id' => owner4.id
 })
 
 animal4 = Animal.new({
   'name' => 'Chuckles',
   'type' => 'Spider monkey',
   'admission_date' => 'April 2 2016',
   'adoptable' => true,
   'owner_id' => owner1.id
 })

 animal5 = Animal.new({
   'name' => 'Elisa',
   'type' => 'Highland Cow',
   'admission_date' => 'May 4 2016',
   'adoptable' => false,
   'owner_id' => owner1.id
 })

 animal6 = Animal.new({
   'name' => 'Alan',
   'type' => 'Salmon',
   'admission_date' => 'November 15 2016',
   'adoptable' => false,
   'owner_id' => owner1.id
 })

 animal7 = Animal.new({
   'name' => 'Dorothy',
   'type' => 'Polar Bear',
   'admission_date' => 'December 9 2016',
   'adoptable' => false,
   'owner_id' => owner1.id
 })

 animal1.save
 animal2.save
 animal3.save
 animal4.save
 animal5.save
 animal6.save
 animal7.save

binding.pry
nil