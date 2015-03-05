#!/bin/env ruby
# encoding: utf-8

#### RJ


#### COPACABANA_PALACE
hotel = Hotel.new name: 'Copacabana Palace', city:'Rio de Janeiro', state:'RJ', country:"Brasil", image_path: '/hotel/copacabana_palace.jpg', description:"Este hotel 4-estrelas oferece um café-da-manhã diário, e dispõe de quartos com ar-condicionado e TVs de 32 a cabo. Está situado a apenas 100 m da famosa praia de Copacabana. No terraço do Mar Palace Copacabana Hotel"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Royal Tulip Rio de Janeiro
hotel = Hotel.new name: 'Royal Tulip Rio de Janeiro', city:'Rio de Janeiro', state:'RJ', country:"Brasil", image_path: '/hotel/Royal-Tulip-Rio-de-Janeiro.jpg', description:"O Royal Tulip oferece vistas da Praia de São Conrado, piscina ao ar livre, joalheria e lojas. Todos os quartos elegantes possuem ar-condicionado e varanda com vistas deslumbrantes do mar. Você pode desfrutar de pratos da culinária local e internacional no restaurante do hotel, bem como de bebidas no bar do saguão."
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Vila Galé Rio de Janeiro
hotel = Hotel.new name: 'Vila Gale Rio de Janeiro', city:'Rio de Janeiro', state:'RJ', country:"Brasil", image_path: '/hotel/Vila-Gale-Rio-de-Janeiro.jpg', description:"No total são 292 apartamentos e suítes, divididos entre o palácio, dois anexos e um edificio. Todos os apartamentos, oferecem: ar condicionado, frigobar, Tv a cabo, workdesk com Internet wireless, linha de telefone direta, rádio relógio, secador de cabelo, espelho de aumento e cofre eletrônico individual."
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Copacabana Rio Hotel
hotel = Hotel.new name: 'Copacabana Rio Hotel', city:'Rio de Janeiro', state:'RJ', country:"Brasil", image_path: '/hotel/Copacabana-Rio-Hotel.jpg', description:"O Copacabana Rio Hotel está localizado a 1 quadra da Praia de Copacabana, a 3 quadras de Ipanema e a 12 Km do aeroporto. Os viajantes do HU irão usufruir de piscina e fitness Center na área de lazer. Concedem serviços de acesso à Internet e restaurante com café da manhã. As acomodações são equipadas com ar-condicionado, frigobar e telefone."
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('05-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('06-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('26-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('27-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#cancun

#### Grand Oasis Palm
hotel = Hotel.new name:"Grand Oasis Palm", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/grand_oasis_palm.jpg', description:"Localizado a 5 km do Centro de Cancún, na Zona Hoteleira, o Grand Oasis Palm fará de tudo para tornar sua estada por esta maravilhosa cidade, uma experiência turística inesquecível.   Nos dias em que estiver no Oasis Palm, equilibre o tempo de lazer entre uma ampla piscina"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Riu Cancun All Inclusive
hotel = Hotel.new name:"Riu Cancun All Inclusive", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/riu_cancun_all_inclusive.jpg', description:"Localização do Estabelecimento Situado em Cancún (Zona de Hotéis), o Riu Cancun All Inclusive fica ao virar da esquina de dois dos mais importantes ex-líbris da região: Playa Caracol e Plaza Caracol. Esta estância com tudo incluído encontra-se ainda bastante próxima de outros lugares de destaque"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

### Flamingo Cancun Resort
hotel = Hotel.new name:"Flamingo Cancun Resort", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/flamingo_cancun_resort.jpg', description:"For added convenience, we even offer complimentary shuttle service to and from local beaches. 0710 IRT"
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

### Condominios Salvia Cancun
hotel = Hotel.new name:"Condominios Salvia Cancun", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/Condominios-Salvia-Cancun.jpg', description:"O hotel situa-se apenas a cerca de 20 minutos do Aeroporto Internacional de Cancun. Localiza-se no centro da zona hoteleira apenas a cerca de 50 m do Centro de Congressos e da área comercial. Nas imediações encontram-se famosos restaurantes e clubes nocturnos. Em frente ao hotel existe uma praia."
hotel.add_periods Period.new(check_in: Date.parse('01-03-2015'), check_out: Date.parse('10-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('11-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

#### Oasis Palm Beach
hotel = Hotel.new name:"Oasis Palm Beach", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/oasis_palm_beach.jpg', description: "Passe as noites ao lado de quem você dentro de um dos quartos do Grand Oasis. Independente da categoria escolhida, saiba que TV a cabo, geladeira, ar-condicionado, roupas de cama premium"
hotel.add_periods Period.new(check_in: Date.parse('9-03-2015'), check_out: Date.parse('16-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('17-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()

### Cancun Bay Resort
hotel = Hotel.new name:"Cancun Bay Resort", state:"Quintana Roo", city: "Cancun", country: "Mexico", image_path: '/hotel/Cancun-Bay-Resort.jpg', description: "O hotel situa-se nos limites da zona hoteleira junto à praia e apenas a poucos passos do cais dos barcos de recreio. Nas imediações encontrará vários estabelecimentos comerciais e locais de entretenimento bem como uma ligação à rede de transportes públicos"
hotel.add_periods Period.new(check_in: Date.parse('9-03-2015'), check_out: Date.parse('16-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('17-03-2015'), check_out: Date.parse('20-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('21-03-2015'), check_out: Date.parse('30-03-2015'))
hotel.save()


#manila
#### Copacabana Aparment Hotel
hotel = Hotel.new name:"Copacabana Aparment Hotel", state:"Manila", city: "Pasay City", country: "Philipinas", image_path: '/copacabana_aparment_hotel.jpg', description: "Dentro do Mar Palace Copacabana, você também encontra um restaurante, um business center e alguns computadores com acesso à internet."
hotel.add_periods Period.new(check_in: Date.parse('04-03-2015'), check_out: Date.parse('15-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('16-03-2015'), check_out: Date.parse('23-03-2015'))
hotel.save()

#acapulco
#### Copacabana Beach Hotel
hotel = Hotel.new name:"Copacabana Beach Hotel", state:"Guerrero", city: "Acapulco", country: "Mexico", image_path: '/sem-imagem-hotel.jpg', description: "Copabacana Beach Hotel Acapulco is located in the heart of the Golden Zone. It has variety of restaurants and bars and a perfect center for events Congresses. It also has three jacuzzis, a gym, a sitting area with hammocks"
hotel.add_periods Period.new(check_in: Date.parse('14-03-2015'), check_out: Date.parse('21-03-2015'))
hotel.add_periods Period.new(check_in: Date.parse('22-03-2015'), check_out: Date.parse('29-03-2015'))
hotel.save()