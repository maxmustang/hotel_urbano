#!/bin/env ruby
# encoding: utf-8
#### COPACABANA_PALACE
hotel = Hotel.new name: 'Copacabana Palace', city:'Rio de Janeiro', state:'RJ', country:"Brasil", image_path: '/copacabana_palace.jpg', description:"Este hotel 4-estrelas oferece um café-da-manhã diário, e dispõe de quartos com ar-condicionado e TVs de 32 a cabo. Está situado a apenas 100 m da famosa praia de Copacabana. No terraço do Mar Palace Copacabana Hotel"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Grand Oasis Palm
hotel = Hotel.new name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/grand_oasis_palm.jpg', description:"Localizado a 5 km do Centro de Cancún, na Zona Hoteleira, o Grand Oasis Palm fará de tudo para tornar sua estada por esta maravilhosa cidade, uma experiência turística inesquecível.   Nos dias em que estiver no Oasis Palm, equilibre o tempo de lazer entre uma ampla piscina"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Oasis Palm Beach
hotel = Hotel.new name:"Oasis Palm Beach", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/oasis_palm_beach.jpg', description: "Passe as noites ao lado de quem você dentro de um dos quartos do Grand Oasis. Independente da categoria escolhida, saiba que TV a cabo, geladeira, ar-condicionado, roupas de cama premium"
hotel.add_periods Period.new(check_in: Date.parse('9-03-2015'), check_out: Date.parse('16-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('17-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Copacabana Aparment Hotel
hotel = Hotel.new name:"Copacabana Aparment Hotel", state:"Manila", city: "Pasay City", country: "Philipinas", image_path: '/copacabana_aparment_hotel.jpg', description: "Dentro do Mar Palace Copacabana, você também encontra um restaurante, um business center e alguns computadores com acesso à internet."
hotel.add_periods Period.new(check_in: Date.parse('04-03-2015'), check_out: Date.parse('15-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('16-03-2015'), check_out: Date.parse('23-03-2015'))
hotel.save()

#### Copacabana Beach Hotel
hotel = Hotel.new name:"Copacabana Beach Hotel", state:"Guerrero", city: "Acapulco", country: "Mexico", image_path: '/sem-imagem-hotel.jpg', description: "Copabacana Beach Hotel Acapulco is located in the heart of the Golden Zone. It has variety of restaurants and bars and a perfect center for events Congresses. It also has three jacuzzis, a gym, a sitting area with hammocks"
hotel.add_periods Period.new(check_in: Date.parse('14-03-2015'), check_out: Date.parse('21-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('22-03-2015'), check_out: Date.parse('29-03-2015'))
hotel.save()