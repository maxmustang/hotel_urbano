#### COPACABANA_PALACE
hotel = Hotel.new name: 'Copacabana Palace', city:'Rio de Janeiro', state:'RJ', country:"Brasil"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Grand Oasis Palm
hotel = Hotel.new(name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico")
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Oasis Palm Beach
hotel = Hotel.new(name:"Oasis Palm Beach", state:"Quintana Roo", city: "Cancun", country: "Mexico")
hotel.add_periods Period.new(check_in: Date.parse('9-03-2015'), check_out: Date.parse('16-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('17-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Copacabana Aparment Hotel
hotel = Hotel.new(name:"Copacabana Aparment Hotel", state:"Manila", city: "Pasay City", country: "Philipinas")
hotel.add_periods Period.new(check_in: Date.parse('04-03-2015'), check_out: Date.parse('15-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('16-03-2015'), check_out: Date.parse('23-03-2015'))
hotel.save()

#### Copacabana Beach Hotel
hotel = Hotel.new(name:"Copacabana Beach Hotel", state:"Guerrero", city: "Acapulco", country: "Mexico")
hotel.add_periods Period.new(check_in: Date.parse('14-03-2015'), check_out: Date.parse('21-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('22-03-2015'), check_out: Date.parse('29-03-2015'))
hotel.save()