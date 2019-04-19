# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vendor.create(name:'FlowersRus',email:'flowers@us.com',phone:'972-312-2312',street:'first ave',city:'flower central',state:'NJ',zip:'12332',active_flg:1)
User.create(name:'Justin Cole',email:'Justincole29@hotmail.com',password:'Jman2255!!',street:'2 Mettle Lane',city:'Wharton',state:'NJ',zip:'07885',user_type:'Vendor',vendor_id:1)
VendorToService.create(vendor_id:1,service_id:1,price:32.50)
VendorToService.create(vendor_id:1,service_id:2,price:12.50)
VendorToService.create(vendor_id:1,service_id:3,price:42.50)
Service.create(service_name:'Flowers',service_description:'Decorating the venue with flowers')
Service.create(service_name:'Catering',service_description:'Making sure the guests are well fed')
Service.create(service_name:'Music',service_description:'Providing quality music')