//
//  Airports.swift
//  AirportMingleTests
//
//  Created by Jippe Joosten on 01/09/2021.
//

import Foundation

let MainAirport = Airport(
    id: "AMS",
    latitude: 52.30907, longitude: 4.763385,
    name: "Amsterdam-Schiphol Airport",
    city: "Amsterdam", countryId: "NL"
)

let ClosestAirportToMain = Airport(
    id: "RTM",
    latitude: 51.948948, longitude: 4.433606,
    name: "Rotterdam The Hague Airport",
    city: "Rotterdam", countryId: "NL"
)

let MockAirports = [
    Airport(
        id: "AAL",
        latitude: 57.08655, longitude: 9.872241,
        name: "Aalborg Airport",
        city: "Aalborg", countryId: "DK"
    ),
    Airport(
        id: "ABQ",
        latitude: 35.049625, longitude: -106.617195,
        name: "Albuquerque International Airport",
        city: "Albuquerque", countryId: "US"
    ),
    Airport(
        id: "ABZ",
        latitude: 57.200253, longitude: -2.204186,
        name: "Dyce Airport",
        city: "Aberdeen", countryId: "GB"
    ),
    Airport(
        id: "ACC",
        latitude: 5.60737, longitude: -0.171769,
        name: "Kotoka Airport",
        city: "Accra", countryId: "GH"
    ),
    Airport(
        id: "AES",
        latitude: 62.559643, longitude: 6.116605,
        name: "Vigra Airport",
        city: "Aalesund", countryId: "NO"
    ),
    Airport(
        id: "AGP",
        latitude: 36.675182, longitude: -4.489616,
        name: "Malaga Airport",
        city: "Malaga", countryId: "ES"
    ),
    Airport(
        id: "AKL",
        latitude: -37.004787, longitude: 174.78352,
        name: "Auckland International Airport",
        city: "Auckland", countryId: "NZ"
    ),
    Airport(
        id: "ALA",
        latitude: 43.346653, longitude: 77.01145,
        name: "Almaty Airport",
        city: "Almaty", countryId: "KZ"
    ),
    Airport(
        id: "ALC",
        latitude: 38.287098, longitude: -0.557381,
        name: "Alicante Airport",
        city: "Alicante", countryId: "ES"
    ),
    Airport(
        id: "AMM",
        latitude: 31.722534, longitude: 35.98932,
        name: "Queen Alia International Airport",
        city: "Amman", countryId: "JO"
    ),
    Airport(
        id: "AMS",
        latitude: 52.30907, longitude: 4.763385,
        name: "Amsterdam-Schiphol Airport",
        city: "Amsterdam", countryId: "NL"
    ),
    Airport(
        id: "ANC",
        latitude: 61.174442, longitude: -149.99638,
        name: "Ted Stevens Anchorage International Airport",
        city: "Anchorage", countryId: "US"
    ),
    Airport(
        id: "ARN",
        latitude: 59.64982, longitude: 17.930365,
        name: "Arlanda Airport",
        city: "Stockholm", countryId: "SE"
    ),
    Airport(
        id: "ATH",
        latitude: 37.93635, longitude: 23.946486,
        name: "Eleftherios Venizelos International Airport",
        city: "Athens", countryId: "GR"
    ),
    Airport(
        id: "ATL",
        latitude: 33.640068, longitude: -84.44403,
        name: "Hartsfield-Jackson Atlanta International Airport",
        city: "Atlanta", countryId: "US"
    ),
    Airport(
        id: "AUA",
        latitude: 12.502222, longitude: -70.013885,
        name: "Reina Beatrix Airport",
        city: "Aruba", countryId: "AW"
    ),
    Airport(
        id: "AUH",
        latitude: 24.426912, longitude: 54.645973,
        name: "Abu Dhabi International Airport",
        city: "Abu Dhabi", countryId: "AE"
    ),
    Airport(
        id: "AUS",
        latitude: 30.202545, longitude: -97.66706,
        name: "Austin-Bergstrom International Airport",
        city: "Austin", countryId: "US"
    ),
    Airport(
        id: "AYT",
        latitude: 36.89928, longitude: 30.80135,
        name: "Antalya Airport",
        city: "Antalya", countryId: "TR"
    ),
    Airport(
        id: "BAH",
        latitude: 26.26918, longitude: 50.62605,
        name: "Bahrain International Airport",
        city: "Bahrain", countryId: "BH"
    ),
    Airport(
        id: "BCN",
        latitude: 41.30303, longitude: 2.07593,
        name: "Barcelona Airport",
        city: "Barcelona", countryId: "ES"
    ),
    Airport(
        id: "BEG",
        latitude: 44.819443, longitude: 20.306944,
        name: "Belgrad Nikola Tesla Airport",
        city: "Belgrade", countryId: "RS"
    ),
    Airport(
        id: "BFL",
        latitude: 35.429626, longitude: -119.04533,
        name: "Meadows Field",
        city: "Bakersfield", countryId: "US"
    ),
    Airport(
        id: "BFS",
        latitude: 54.662395, longitude: -6.217616,
        name: "Belfast International Airport",
        city: "Belfast", countryId: "GB"
    ),
    Airport(
        id: "BGO",
        latitude: 60.289062, longitude: 5.228169,
        name: "Flesland Airport",
        city: "Bergen", countryId: "NO"
    ),
    Airport(
        id: "BHX",
        latitude: 52.45252, longitude: -1.733256,
        name: "Birmingham International Airport",
        city: "Birmingham", countryId: "GB"
    ),
    Airport(
        id: "BJX",
        latitude: 20.985699, longitude: -101.479,
        name: "Del Bajio Airport",
        city: "Leon/Guanajuato", countryId: "MX"
    ),
    Airport(
        id: "BKK",
        latitude: 13.693062, longitude: 100.752045,
        name: "Suvarnabhumi Airport",
        city: "Bangkok", countryId: "TH"
    ),
    Airport(
        id: "BLI",
        latitude: 48.795734, longitude: -122.53267,
        name: "Bellingham Airport",
        city: "Bellingham", countryId: "US"
    ),
    Airport(
        id: "BLL",
        latitude: 55.747383, longitude: 9.147874,
        name: "Billund Airport",
        city: "Billund", countryId: "DK"
    ),
    Airport(
        id: "BLQ",
        latitude: 44.529266, longitude: 11.293289,
        name: "Guglielmo Marconi Airport",
        city: "Bologna", countryId: "IT"
    ),
    Airport(
        id: "BNA",
        latitude: 36.13174, longitude: -86.668945,
        name: "Nashville Metropolitan Airport",
        city: "Nashville", countryId: "US"
    ),
    Airport(
        id: "BNE",
        latitude: -27.40303, longitude: 153.10905,
        name: "Brisbane Airport",
        city: "Brisbane", countryId: "AU"
    ),
    Airport(
        id: "BOD",
        latitude: 44.83102, longitude: -0.70217,
        name: "Bordeaux Airport",
        city: "Bordeaux", countryId: "FR"
    ),
    Airport(
        id: "BOI",
        latitude: 43.569263, longitude: -116.22193,
        name: "Boise Air Terminal (Gowen Field)",
        city: "Boise", countryId: "US"
    ),
    Airport(
        id: "BOM",
        latitude: 19.095509, longitude: 72.87497,
        name: "Chhatrapati Shivaji International Airport",
        city: "Mumbai", countryId: "IN"
    ),
    Airport(
        id: "BOS",
        latitude: 42.36646, longitude: -71.02018,
        name: "Logan International Airport",
        city: "Boston", countryId: "US"
    ),
    Airport(
        id: "BQN",
        latitude: 18.495832, longitude: -67.13,
        name: "Borinquen Airport",
        city: "Aguadilla", countryId: "PR"
    ),
    Airport(
        id: "BRE",
        latitude: 53.05297, longitude: 8.785352,
        name: "Bremen Airport",
        city: "Bremen", countryId: "DE"
    ),
    Airport(
        id: "BRN",
        latitude: 46.911728, longitude: 7.50356,
        name: "Belp Airport",
        city: "Berne", countryId: "CH"
    ),
    Airport(
        id: "BRS",
        latitude: 51.386757, longitude: -2.710659,
        name: "Bristol Airport",
        city: "Bristol", countryId: "GB"
    ),
    Airport(
        id: "BRU",
        latitude: 50.89717, longitude: 4.483602,
        name: "Brussels Airport",
        city: "Brussels", countryId: "BE"
    ),
    Airport(
        id: "BSL",
        latitude: 47.59961, longitude: 7.532604,
        name: "EuroAirport Swiss",
        city: "Basel", countryId: "FR"
    ),
    Airport(
        id: "BUD",
        latitude: 47.433037, longitude: 19.261621,
        name: "Liszt Ferenc International Airport",
        city: "Budapest", countryId: "HU"
    ),
    Airport(
        id: "BWI",
        latitude: 39.179527, longitude: -76.66894,
        name: "Balt./Wash. International Airport",
        city: "Baltimore", countryId: "US"
    ),
    Airport(
        id: "CAI",
        latitude: 30.120106, longitude: 31.40647,
        name: "Cairo International Airport",
        city: "Cairo", countryId: "EG"
    ),
    Airport(
        id: "CAN",
        latitude: 23.387861, longitude: 113.29734,
        name: "Baiyun Airport",
        city: "Guangzhou", countryId: "CN"
    ),
    Airport(
        id: "CDG",
        latitude: 49.003197, longitude: 2.567023,
        name: "Charles De Gaulle Airport",
        city: "Paris", countryId: "FR"
    ),
    Airport(
        id: "CGN",
        latitude: 50.878365, longitude: 7.122224,
        name: "Koeln/Bonn Airport",
        city: "Cologne", countryId: "DE"
    ),
    Airport(
        id: "CHQ",
        latitude: 35.5402, longitude: 24.140373,
        name: "Souda Airport",
        city: "Chania", countryId: "GR"
    ),
    Airport(
        id: "CLD",
        latitude: 33.11667, longitude: -117.26667,
        name: "Carlsbad Airport",
        city: "San Diego", countryId: "US"
    ),
    Airport(
        id: "CLE",
        latitude: 41.410854, longitude: -81.83821,
        name: "Hopkins International Airport",
        city: "Cleveland", countryId: "US"
    ),
    Airport(
        id: "CLT",
        latitude: 35.219166, longitude: -80.93584,
        name: "Douglas Airport",
        city: "Charlotte", countryId: "US"
    ),
    Airport(
        id: "CMH",
        latitude: 39.99818, longitude: -82.884964,
        name: "Port Columbus International Airport",
        city: "Columbus", countryId: "US"
    ),
    Airport(
        id: "CMN",
        latitude: 33.36667, longitude: -7.586667,
        name: "Mohamed V Airport",
        city: "Casablanca", countryId: "MA"
    ),
    Airport(
        id: "COS",
        latitude: 38.79713, longitude: -104.70056,
        name: "Colorado Springs Airport",
        city: "Colorado Springs", countryId: "US"
    ),
    Airport(
        id: "CPH",
        latitude: 55.62905, longitude: 12.647601,
        name: "Copenhagen Airport",
        city: "Copenhagen", countryId: "DK"
    ),
    Airport(
        id: "CPT",
        latitude: -33.968906, longitude: 18.596489,
        name: "Cape Town International Airport",
        city: "Cape Town", countryId: "ZA"
    ),
    Airport(
        id: "CTU",
        latitude: 30.581135, longitude: 103.9568,
        name: "Chengdu Airport",
        city: "Chengdu", countryId: "CN"
    ),
    Airport(
        id: "CUL",
        latitude: 24.76643, longitude: -107.46958,
        name: "Fedl De Bachigualato Airport",
        city: "Culiacan", countryId: "MX"
    ),
    Airport(
        id: "CUN",
        latitude: 21.040457, longitude: -86.874435,
        name: "Cancun Airport",
        city: "Cancun", countryId: "MX"
    ),
    Airport(
        id: "CUR",
        latitude: 12.184615, longitude: -68.95706,
        name: "Aeropuerto Hato",
        city: "Curacao", countryId: "CW"
    ),
    Airport(
        id: "CVG",
        latitude: 39.0555, longitude: -84.66145,
        name: "Cincinnati/Northern Kentucky Airport",
        city: "Cincinnati", countryId: "US"
    ),
    Airport(
        id: "CWL",
        latitude: 51.39877, longitude: -3.339075,
        name: "Cardiff-Wales Airport",
        city: "Cardiff", countryId: "GB"
    ),
    Airport(
        id: "DCA",
        latitude: 38.853436, longitude: -77.04346,
        name: "Ronald Reagan National Airport",
        city: "Washington", countryId: "US"
    ),
    Airport(
        id: "DEL",
        latitude: 28.556555, longitude: 77.10079,
        name: "Indira Gandhi International Airport",
        city: "Delhi", countryId: "IN"
    ),
    Airport(
        id: "DEN",
        latitude: 39.84939, longitude: -104.672844,
        name: "Denver International Airport",
        city: "Denver", countryId: "US"
    ),
    Airport(
        id: "DFW",
        latitude: 32.89746, longitude: -97.036125,
        name: "Dallas/Ft. Worth International Airport",
        city: "Dallas", countryId: "US"
    ),
    Airport(
        id: "DMM",
        latitude: 26.471111, longitude: 49.79778,
        name: "King Fahad International Airport",
        city: "Dammam", countryId: "SA"
    ),
    Airport(
        id: "DOH",
        latitude: 25.267569, longitude: 51.558067,
        name: "Doha Airport",
        city: "Doha", countryId: "QA"
    ),
    Airport(
        id: "DTW",
        latitude: 42.20781, longitude: -83.35605,
        name: "Detroit Metropolitan Wayne County Airport",
        city: "Detroit", countryId: "US"
    ),
    Airport(
        id: "DUB",
        latitude: 53.42728, longitude: -6.24357,
        name: "Dublin Airport",
        city: "Dublin", countryId: "IE"
    ),
    Airport(
        id: "DUS",
        latitude: 51.278328, longitude: 6.76558,
        name: "Dusseldorf Airport",
        city: "Dusseldorf", countryId: "DE"
    ),
    Airport(
        id: "DXB",
        latitude: 25.248665, longitude: 55.352917,
        name: "Dubai Airport",
        city: "Dubai", countryId: "AE"
    ),
    Airport(
        id: "EDI",
        latitude: 55.948143, longitude: -3.364177,
        name: "Turnhouse Airport",
        city: "Edinburgh", countryId: "GB"
    ),
    Airport(
        id: "ELP",
        latitude: 31.798948, longitude: -106.396,
        name: "El Paso International Airport",
        city: "El Paso", countryId: "US"
    ),
    Airport(
        id: "EMA",
        latitude: 52.82587, longitude: -1.330595,
        name: "East Midlands Airport",
        city: "Leicestershire", countryId: "GB"
    ),
    Airport(
        id: "EUG",
        latitude: 44.119198, longitude: -123.21197,
        name: "Eugene Airport",
        city: "Eugene", countryId: "US"
    ),
    Airport(
        id: "EWR",
        latitude: 40.68907, longitude: -74.17876,
        name: "Newark Liberty International Airport",
        city: "Newark", countryId: "US"
    ),
    Airport(
        id: "EXT",
        latitude: 50.73111, longitude: -3.410968,
        name: "Exeter Airport",
        city: "Exeter", countryId: "GB"
    ),
    Airport(
        id: "EZE",
        latitude: -34.81273, longitude: -58.539833,
        name: "Ministro Pistarini Airport",
        city: "Buenos Aires", countryId: "AR"
    ),
    Airport(
        id: "FAO",
        latitude: 37.020645, longitude: -7.968545,
        name: "Faro Airport",
        city: "Faro", countryId: "PT"
    ),
    Airport(
        id: "FAT",
        latitude: 36.769623, longitude: -119.72024,
        name: "Fresno Yosemite International Airport",
        city: "Fresno", countryId: "US"
    ),
    Airport(
        id: "FCO",
        latitude: 41.794594, longitude: 12.250346,
        name: "Fiumicino Airport",
        city: "Rome", countryId: "IT"
    ),
    Airport(
        id: "FLL",
        latitude: 26.071491, longitude: -80.144905,
        name: "Ft. Lauderdale International Airport",
        city: "Fort Lauderdale", countryId: "US"
    ),
    Airport(
        id: "FLR",
        latitude: 43.802128, longitude: 11.201989,
        name: "Peretola Airport",
        city: "Florence", countryId: "IT"
    ),
    Airport(
        id: "FRA",
        latitude: 50.050801, longitude: 8.564143,
        name: "Frankfurt Airport",
        city: "Frankfurt", countryId: "DE"
    ),
    Airport(
        id: "FUK",
        latitude: 33.584286, longitude: 130.4439,
        name: "Fukuoka Airport",
        city: "Fukuoka", countryId: "JP"
    ),
    Airport(
        id: "GDL",
        latitude: 20.525198, longitude: -103.29921,
        name: "Miguel Hidal Airport",
        city: "Guadalajara", countryId: "MX"
    ),
    Airport(
        id: "GDN",
        latitude: 54.380978, longitude: 18.468655,
        name: "Rebiechowo Airport",
        city: "Gdansk", countryId: "PL"
    ),
    Airport(
        id: "GLA",
        latitude: 55.864212, longitude: -4.431782,
        name: "Glasgow International Airport",
        city: "Glasgow", countryId: "GB"
    ),
    Airport(
        id: "GOT",
        latitude: 57.66664, longitude: 12.294878,
        name: "Landvetter Airport",
        city: "Gothenburg", countryId: "SE"
    ),
    Airport(
        id: "GRU",
        latitude: -23.425669, longitude: -46.481926,
        name: "Guarulhos International Airport",
        city: "Sao Paulo", countryId: "BR"
    ),
    Airport(
        id: "GUA",
        latitude: 14.588071, longitude: -90.53068,
        name: "La Aurora Airport",
        city: "Guatemala City", countryId: "GT"
    ),
    Airport(
        id: "GUM",
        latitude: 13.492787, longitude: 144.80486,
        name: "A.B. Won Pat International Airport",
        city: "Guam", countryId: "GU"
    ),
    Airport(
        id: "GUW",
        latitude: 47.122814, longitude: 51.829556,
        name: "Atyrau Airport",
        city: "Atyrau", countryId: "KZ"
    ),
    Airport(
        id: "GVA",
        latitude: 46.229633, longitude: 6.105774,
        name: "Geneve-Cointrin Airport",
        city: "Geneva", countryId: "CH"
    ),
    Airport(
        id: "HAJ",
        latitude: 52.459255, longitude: 9.694766,
        name: "Hanover Airport",
        city: "Hanover", countryId: "DE"
    ),
    Airport(
        id: "HAM",
        latitude: 53.63128, longitude: 10.006414,
        name: "Fuhlsbuettel Airport",
        city: "Hamburg", countryId: "DE"
    ),
    Airport(
        id: "HEL",
        latitude: 60.31795, longitude: 24.96645,
        name: "Helsinki-Vantaa Airport",
        city: "Helsinki", countryId: "FI"
    ),
    Airport(
        id: "HER",
        latitude: 35.33663, longitude: 25.174192,
        name: "N. Kazantzakis Airport",
        city: "Heraklion", countryId: "GR"
    ),
    Airport(
        id: "HKG",
        latitude: 22.315248, longitude: 113.93649,
        name: "Hong Kong International Airport",
        city: "Hong Kong", countryId: "HK"
    ),
    Airport(
        id: "HMO",
        latitude: 29.089905, longitude: -111.051704,
        name: "Gen Pesqueira Garcia Airport",
        city: "Hermosillo", countryId: "MX"
    ),
    Airport(
        id: "HND",
        latitude: 35.54907, longitude: 139.78453,
        name: "Haneda Airport",
        city: "Tokyo", countryId: "JP"
    ),
    Airport(
        id: "HNL",
        latitude: 21.325832, longitude: -157.92166,
        name: "Honolulu International Airport",
        city: "Honolulu", countryId: "US"
    ),
    Airport(
        id: "HOG",
        latitude: 20.785278, longitude: -76.315,
        name: "Frank Pais Airport",
        city: "Holguin", countryId: "CU"
    ),
    Airport(
        id: "HOU",
        latitude: 29.654512, longitude: -95.277016,
        name: "Hobby Airport",
        city: "Houston", countryId: "US"
    ),
    Airport(
        id: "HUY",
        latitude: 53.583378, longitude: -0.34851,
        name: "Humberside Airport",
        city: "Humberside", countryId: "GB"
    ),
    Airport(
        id: "IAD",
        latitude: 38.95315, longitude: -77.44774,
        name: "Dulles International Airport",
        city: "Washington", countryId: "US"
    ),
    Airport(
        id: "IAH",
        latitude: 29.983334, longitude: -95.34,
        name: "George Bush Intercontinental Airport",
        city: "Houston", countryId: "US"
    ),
    Airport(
        id: "IBZ",
        latitude: 38.876595, longitude: 1.367803,
        name: "Ibiza Airport",
        city: "Ibiza", countryId: "ES"
    ),
    Airport(
        id: "ICN",
        latitude: 37.448524, longitude: 126.45123,
        name: "Incheon International Airport",
        city: "Seoul", countryId: "KR"
    ),
    Airport(
        id: "IGM",
        latitude: 35.256668, longitude: -113.94,
        name: "Kingman Airport",
        city: "Kingman", countryId: "US"
    ),
    Airport(
        id: "IND",
        latitude: 39.730515, longitude: -86.27281,
        name: "Indianapolis International Airport",
        city: "Indianapolis", countryId: "US"
    ),
    Airport(
        id: "INV",
        latitude: 57.539345, longitude: -4.063738,
        name: "Inverness Airport",
        city: "Inverness", countryId: "GB"
    ),
    Airport(
        id: "IPL",
        latitude: 32.837223, longitude: -115.57472,
        name: "Imperial County Airport",
        city: "Imperial", countryId: "US"
    ),
    Airport(
        id: "IST",
        latitude: 40.976665, longitude: 28.815277,
        name: "Ataturk Airport",
        city: "Istanbul", countryId: "TR"
    ),
    Airport(
        id: "ITO",
        latitude: 19.714565, longitude: -155.03963,
        name: "Hilo International Airport",
        city: "Hilo", countryId: "US"
    ),
    Airport(
        id: "IYK",
        latitude: 35.656666, longitude: -117.82917,
        name: "Kern County Airport",
        city: "Inyokern", countryId: "US"
    ),
    Airport(
        id: "JFK",
        latitude: 40.642334, longitude: -73.78817,
        name: "John F. Kennedy International Airport",
        city: "New York", countryId: "US"
    ),
    Airport(
        id: "JNB",
        latitude: -26.132664, longitude: 28.231314,
        name: "Johannesburg International Airport",
        city: "Johannesburg", countryId: "ZA"
    ),
    Airport(
        id: "JRO",
        latitude: -3.424123, longitude: 37.065342,
        name: "Kilimanjaro Airport",
        city: "Kilimanjaro", countryId: "TZ"
    ),
    Airport(
        id: "KBP",
        latitude: 50.341244, longitude: 30.895206,
        name: "Kiev/Kyiv - Borispol Airport",
        city: "Kiev/Kyiv", countryId: "UA"
    ),
    Airport(
        id: "KEF",
        latitude: 63.997765, longitude: -22.624283,
        name: "Keflavik International Airport",
        city: "Reykjavik", countryId: "IS"
    ),
    Airport(
        id: "KGL",
        latitude: -1.963042, longitude: 30.135014,
        name: "Gregoire Kayibanda Airport",
        city: "Kigali", countryId: "RW"
    ),
    Airport(
        id: "KIX",
        latitude: 34.43533, longitude: 135.24397,
        name: "Kansai International Airport",
        city: "Osaka", countryId: "JP"
    ),
    Airport(
        id: "KOA",
        latitude: 19.736174, longitude: -156.04108,
        name: "Keahole Airport",
        city: "Kona", countryId: "US"
    ),
    Airport(
        id: "KRK",
        latitude: 50.075493, longitude: 19.793743,
        name: "J. Paul II Balice International Airport",
        city: "Krakow", countryId: "PL"
    ),
    Airport(
        id: "KRS",
        latitude: 58.20255, longitude: 8.073732,
        name: "Kjevik Airport",
        city: "Kristiansand", countryId: "NO"
    ),
    Airport(
        id: "KUL",
        latitude: 2.755672, longitude: 101.70539,
        name: "Kuala Lumpur International Airport",
        city: "Kuala Lumpur", countryId: "MY"
    ),
    Airport(
        id: "KWI",
        latitude: 29.240116, longitude: 47.971252,
        name: "Kuwait International Airport",
        city: "Kuwait", countryId: "KW"
    ),
    Airport(
        id: "LAD",
        latitude: -8.847951, longitude: 13.234862,
        name: "4 de Fevereiro Airport",
        city: "Luanda", countryId: "AO"
    ),
    Airport(
        id: "LAS",
        latitude: 36.086945, longitude: -115.1486,
        name: "McCarran International Airport",
        city: "Las Vegas", countryId: "US"
    ),
    Airport(
        id: "LAX",
        latitude: 33.943398, longitude: -118.40828,
        name: "Los Angeles International Airport",
        city: "Los Angeles", countryId: "US"
    ),
    Airport(
        id: "LBA",
        latitude: 53.86934, longitude: -1.659985,
        name: "Leeds/Bradford Airport",
        city: "Leeds", countryId: "GB"
    ),
    Airport(
        id: "LCA",
        latitude: 34.880867, longitude: 33.62599,
        name: "Larnaca Airport",
        city: "Larnaca", countryId: "CY"
    ),
    Airport(
        id: "LCY",
        latitude: 51.5, longitude: 0.05,
        name: "London City Airport",
        city: "London", countryId: "GB"
    ),
    Airport(
        id: "LED",
        latitude: 59.806084, longitude: 30.3083,
        name: "Pulkovo Airport",
        city: "Saint Petersburg", countryId: "RU"
    ),
    Airport(
        id: "LEJ",
        latitude: 51.42026, longitude: 12.221202,
        name: "Leipzig/Halle Airport",
        city: "Leipzig/Halle", countryId: "DE"
    ),
    Airport(
        id: "LGW",
        latitude: 51.156807, longitude: -0.161863,
        name: "Gatwick Airport",
        city: "London", countryId: "GB"
    ),
    Airport(
        id: "LHR",
        latitude: 51.469604, longitude: -0.453566,
        name: "Heathrow Airport",
        city: "London", countryId: "GB"
    ),
    Airport(
        id: "LIH",
        latitude: 21.978205, longitude: -159.34944,
        name: "Kauai Island Airport",
        city: "Kauai Island", countryId: "US"
    ),
    Airport(
        id: "LIM",
        latitude: -12.019421, longitude: -77.107666,
        name: "J Chavez International Airport",
        city: "Lima", countryId: "PE"
    ),
    Airport(
        id: "LIN",
        latitude: 45.460957, longitude: 9.279157,
        name: "Linate Airport",
        city: "Milan", countryId: "IT"
    ),
    Airport(
        id: "LIS",
        latitude: 38.770042, longitude: -9.128165,
        name: "Lisboa Airport",
        city: "Lisbon", countryId: "PT"
    ),
    Airport(
        id: "LJU",
        latitude: 46.23102, longitude: 14.454972,
        name: "Brnik Airport",
        city: "Ljubljana", countryId: "SI"
    ),
    Airport(
        id: "LOS",
        latitude: 6.577871, longitude: 3.321178,
        name: "Murtala Muhammed Airport",
        city: "Lagos", countryId: "NG"
    ),
    Airport(
        id: "LPA",
        latitude: 27.938944, longitude: -15.389351,
        name: "Airport De Gran Canaria",
        city: "Las Palmas", countryId: "ES"
    ),
    Airport(
        id: "LPI",
        latitude: 58.4, longitude: 15.516667,
        name: "Linkoping Airport",
        city: "Linkoping", countryId: "SE"
    ),
    Airport(
        id: "LPL",
        latitude: 53.337616, longitude: -2.854905,
        name: "Liverpool John Lennon Airport",
        city: "Liverpool", countryId: "GB"
    ),
    Airport(
        id: "LTN",
        latitude: 51.87977, longitude: -0.376232,
        name: "Luton Airport",
        city: "London", countryId: "GB"
    ),
    Airport(
        id: "LTO",
        latitude: 25.983334, longitude: -111.35,
        name: "Loreto Airport",
        city: "Loreto", countryId: "MX"
    ),
    Airport(
        id: "LUX",
        latitude: 49.63111, longitude: 6.209539,
        name: "Luxembourg Airport",
        city: "Luxembourg", countryId: "LU"
    ),
    Airport(
        id: "LYS",
        latitude: 45.721424, longitude: 5.080334,
        name: "Lyon Saint-Exupery International Airport",
        city: "Lyon", countryId: "FR"
    ),
    Airport(
        id: "MAD",
        latitude: 40.46515, longitude: -3.570209,
        name: "Barajas Airport",
        city: "Madrid", countryId: "ES"
    ),
    Airport(
        id: "MAN",
        latitude: 53.362907, longitude: -2.273354,
        name: "Manchester International Airport",
        city: "Manchester", countryId: "GB"
    ),
    Airport(
        id: "MCE",
        latitude: 37.28472, longitude: -120.51278,
        name: "Merced Municipal Airport",
        city: "Merced", countryId: "US"
    ),
    Airport(
        id: "MCI",
        latitude: 39.293808, longitude: -94.719925,
        name: "Kansas City International Airport",
        city: "Kansas City", countryId: "US"
    ),
    Airport(
        id: "MCO",
        latitude: 28.432177, longitude: -81.308304,
        name: "Orlando International Airport",
        city: "Orlando", countryId: "US"
    ),
    Airport(
        id: "MDW",
        latitude: 41.788136, longitude: -87.74087,
        name: "Midway Airport",
        city: "Chicago", countryId: "US"
    ),
    Airport(
        id: "MEL",
        latitude: -37.669613, longitude: 144.84978,
        name: "Tullamarine Airport",
        city: "Melbourne", countryId: "AU"
    ),
    Airport(
        id: "MEM",
        latitude: 35.04458, longitude: -89.98226,
        name: "Memphis International Airport",
        city: "Memphis", countryId: "US"
    ),
    Airport(
        id: "MEX",
        latitude: 19.435278, longitude: -99.07278,
        name: "Juarez International Airport",
        city: "Mexico City", countryId: "MX"
    ),
    Airport(
        id: "MFR",
        latitude: 42.369026, longitude: -122.87312,
        name: "Rogue Valley International-Medford Airport",
        city: "Medford", countryId: "US"
    ),
    Airport(
        id: "MIA",
        latitude: 25.796, longitude: -80.27824,
        name: "Miami International Airport",
        city: "Miami", countryId: "US"
    ),
    Airport(
        id: "MKE",
        latitude: 42.948093, longitude: -87.90267,
        name: "General Mitchell Airport",
        city: "Milwaukee", countryId: "US"
    ),
    Airport(
        id: "MLA",
        latitude: 35.849777, longitude: 14.495401,
        name: "Luqa Airport",
        city: "Malta", countryId: "MT"
    ),
    Airport(
        id: "MLM",
        latitude: 19.84351, longitude: -101.02693,
        name: "Morelia Airport",
        city: "Morelia", countryId: "MX"
    ),
    Airport(
        id: "MME",
        latitude: 54.512226, longitude: -1.434013,
        name: "Durham Tees Valley Airport",
        city: "Durham Tees Valley", countryId: "GB"
    ),
    Airport(
        id: "MMH",
        latitude: 37.63111, longitude: -118.85139,
        name: "Mammoth Lakes Airport",
        city: "Mammoth Lakes", countryId: "US"
    ),
    Airport(
        id: "MRS",
        latitude: 43.44178, longitude: 5.222137,
        name: "Marseille Airport",
        city: "Marseille", countryId: "FR"
    ),
    Airport(
        id: "MRY",
        latitude: 36.587296, longitude: -121.850815,
        name: "Monterey Peninsula Airport",
        city: "Monterey", countryId: "US"
    ),
    Airport(
        id: "MSE",
        latitude: 51.35, longitude: 1.35,
        name: "Kent International Airport",
        city: "Manston", countryId: "GB"
    ),
    Airport(
        id: "MSP",
        latitude: 44.883015, longitude: -93.21092,
        name: "Minneapolis-St. Paul International Airport",
        city: "Minneapolis", countryId: "US"
    ),
    Airport(
        id: "MSQ",
        latitude: 53.889725, longitude: 28.032442,
        name: "Minsk International 2 Airport",
        city: "Minsk", countryId: "BY"
    ),
    Airport(
        id: "MSY",
        latitude: 29.984564, longitude: -90.25639,
        name: "Louis Armstrong International Airport",
        city: "New Orleans", countryId: "US"
    ),
    Airport(
        id: "MUC",
        latitude: 48.353004, longitude: 11.790143,
        name: "Franz Josef Strauss Airport",
        city: "Munich", countryId: "DE"
    ),
    Airport(
        id: "MUO",
        latitude: 43.13333, longitude: -115.683334,
        name: "Mountain Home Air Force Base",
        city: "Mountain Home", countryId: "US"
    ),
    Airport(
        id: "MXP",
        latitude: 45.627403, longitude: 8.71237,
        name: "Malpensa Airport",
        city: "Milan", countryId: "IT"
    ),
    Airport(
        id: "NAP",
        latitude: 40.886112, longitude: 14.291667,
        name: "Naples Airport",
        city: "Naples", countryId: "IT"
    ),
    Airport(
        id: "NBO",
        latitude: -1.319167, longitude: 36.92578,
        name: "Jomo Kenyatta International Airport",
        city: "Nairobi", countryId: "KE"
    ),
    Airport(
        id: "NCE",
        latitude: 43.66049, longitude: 7.205232,
        name: "Cote D",
        city: "Nice", countryId: "FR"
    ),
    Airport(
        id: "NCL",
        latitude: 55.037064, longitude: -1.710629,
        name: "Newcastle Airport",
        city: "Newcastle", countryId: "GB"
    ),
    Airport(
        id: "NDR",
        latitude: 35.15, longitude: -2.916667,
        name: "Nador Airport",
        city: "Nador", countryId: "MA"
    ),
    Airport(
        id: "NRT",
        latitude: 35.773212, longitude: 140.38744,
        name: "Narita Airport",
        city: "Tokyo", countryId: "JP"
    ),
    Airport(
        id: "NTE",
        latitude: 47.157623, longitude: -1.601402,
        name: "Nantes Atlantique Airport",
        city: "Nantes", countryId: "FR"
    ),
    Airport(
        id: "NUE",
        latitude: 49.494167, longitude: 11.077062,
        name: "Metropolitan Area Airport",
        city: "Nuremberg", countryId: "DE"
    ),
    Airport(
        id: "NWI",
        latitude: 52.669533, longitude: 1.276782,
        name: "Norwich Airport",
        city: "Norwich", countryId: "GB"
    ),
    Airport(
        id: "OAK",
        latitude: 37.71188, longitude: -122.21201,
        name: "Metropolitan Oakland International Airport",
        city: "Oakland", countryId: "US"
    ),
    Airport(
        id: "OGG",
        latitude: 20.892883, longitude: -156.43863,
        name: "Kahului Airport",
        city: "Kahului", countryId: "US"
    ),
    Airport(
        id: "OKC",
        latitude: 35.39563, longitude: -97.59609,
        name: "Will Rogers Airport",
        city: "Oklahoma City", countryId: "US"
    ),
    Airport(
        id: "OPO",
        latitude: 41.237774, longitude: -8.670272,
        name: "Porto Airport",
        city: "Porto", countryId: "PT"
    ),
    Airport(
        id: "ORD",
        latitude: 41.976913, longitude: -87.90488,
        name: "O'Hare International Airport",
        city: "Chicago", countryId: "US"
    ),
    Airport(
        id: "ORK",
        latitude: 51.846645, longitude: -8.48914,
        name: "Cork Airport",
        city: "Cork", countryId: "IE"
    ),
    Airport(
        id: "OSC",
        latitude: 44.433334, longitude: -83.333336,
        name: "Wurtsmith Air Force Base",
        city: "Oscoda", countryId: "US"
    ),
    Airport(
        id: "OSL",
        latitude: 60.19419, longitude: 11.100411,
        name: "Oslo Airport",
        city: "Gardermoen", countryId: "NO"
    ),
    Airport(
        id: "OTP",
        latitude: 44.571156, longitude: 26.077063,
        name: "Otopeni International Airport",
        city: "Bucharest", countryId: "RO"
    ),
    Airport(
        id: "PBM",
        latitude: 5.451389, longitude: -55.191113,
        name: "Zanderij International Airport",
        city: "Paramaribo", countryId: "SR"
    ),
    Airport(
        id: "PDX",
        latitude: 45.588997, longitude: -122.5929,
        name: "Portland International Airport",
        city: "Portland", countryId: "US"
    ),
    Airport(
        id: "PEK",
        latitude: 40.078537, longitude: 116.5871,
        name: "Capital Airport",
        city: "Beijing", countryId: "CN"
    ),
    Airport(
        id: "PHL",
        latitude: 39.87641, longitude: -75.2433,
        name: "Philadelphia International Airport",
        city: "Philadelphia", countryId: "US"
    ),
    Airport(
        id: "PHX",
        latitude: 33.435036, longitude: -112.00016,
        name: "Sky Harbor International Airport",
        city: "Phoenix", countryId: "US"
    ),
    Airport(
        id: "PIT",
        latitude: 40.49585, longitude: -80.25657,
        name: "Pittsburgh International Airport",
        city: "Pittsburgh", countryId: "US"
    ),
    Airport(
        id: "PMI",
        latitude: 39.547653, longitude: 2.730388,
        name: "Palma Mallorca Airport",
        city: "Palma Mallorca", countryId: "ES"
    ),
    Airport(
        id: "PPT",
        latitude: -17.55963, longitude: -149.60938,
        name: "Faaa Airport",
        city: "Papeete", countryId: "PF"
    ),
    Airport(
        id: "PRC",
        latitude: 34.65, longitude: -112.424164,
        name: "Prescott Airport",
        city: "Prescott", countryId: "US"
    ),
    Airport(
        id: "PRG",
        latitude: 50.10619, longitude: 14.266638,
        name: "Prague-Ruzyne Airport",
        city: "Prague", countryId: "CZ"
    ),
    Airport(
        id: "PSA",
        latitude: 43.69871, longitude: 10.399915,
        name: "Gal Galilei Airport",
        city: "Pisa", countryId: "IT"
    ),
    Airport(
        id: "PSP",
        latitude: 33.822975, longitude: -116.508446,
        name: "Palm Springs Municipal Airport",
        city: "Palm Springs", countryId: "US"
    ),
    Airport(
        id: "PTY",
        latitude: 9.066897, longitude: -79.38764,
        name: "Tocumen International Airport",
        city: "Panama City", countryId: "PA"
    ),
    Airport(
        id: "PVG",
        latitude: 31.151825, longitude: 121.799805,
        name: "Pu Dong Airport",
        city: "Shanghai", countryId: "CN"
    ),
    Airport(
        id: "PVR",
        latitude: 20.678297, longitude: -105.24898,
        name: "Ordaz",
        city: "Puerto Vallarta", countryId: "MX"
    ),
    Airport(
        id: "RAK",
        latitude: 31.601875, longitude: -8.026902,
        name: "Menara Airport",
        city: "Marrakech", countryId: "MA"
    ),
    Airport(
        id: "RDU",
        latitude: 35.873592, longitude: -78.79086,
        name: "Raleigh/Durham Airport",
        city: "Raleigh/Durham", countryId: "US"
    ),
    Airport(
        id: "RIX",
        latitude: 56.92208, longitude: 23.979807,
        name: "Riga Airport",
        city: "Riga", countryId: "LV"
    ),
    Airport(
        id: "RNO",
        latitude: 39.505783, longitude: -119.775696,
        name: "Reno/Tahoe International Airport",
        city: "Reno", countryId: "US"
    ),
    Airport(
        id: "RTM",
        latitude: 51.948948, longitude: 4.433606,
        name: "Rotterdam The Hague Airport",
        city: "Rotterdam", countryId: "NL"
    ),
    Airport(
        id: "SAF",
        latitude: 35.6175, longitude: -106.08833,
        name: "Santa Fe Airport",
        city: "Santa Fe", countryId: "US"
    ),
    Airport(
        id: "SAL",
        latitude: 13.445126, longitude: -89.05723,
        name: "Comalapa International Airport",
        city: "San Salvador", countryId: "SV"
    ),
    Airport(
        id: "SAN",
        latitude: 32.731937, longitude: -117.19731,
        name: "San Diego International Airport",
        city: "San Diego", countryId: "US"
    ),
    Airport(
        id: "SAT",
        latitude: 29.524937, longitude: -98.47264,
        name: "San Antonio International Airport",
        city: "San Antonio", countryId: "US"
    ),
    Airport(
        id: "SAW",
        latitude: 40.904675, longitude: 29.309189,
        name: "Sabiha Gokcen",
        city: "Istanbul", countryId: "TR"
    ),
    Airport(
        id: "SBA",
        latitude: 34.432835, longitude: -119.83648,
        name: "Santa Barbara Municipal Airport",
        city: "Santa Barbara", countryId: "US"
    ),
    Airport(
        id: "SBP",
        latitude: 35.239113, longitude: -120.640625,
        name: "San Luis Obispo County Regional Airport",
        city: "San Luis Obispo", countryId: "US"
    ),
    Airport(
        id: "SEA",
        latitude: 47.44384, longitude: -122.301735,
        name: "Seattle/Tacoma International Airport",
        city: "Seattle", countryId: "US"
    ),
    Airport(
        id: "SEN",
        latitude: 51.572777, longitude: 0.701389,
        name: "Southend Municipal Airport",
        city: "Southend", countryId: "GB"
    ),
    Airport(
        id: "SFB",
        latitude: 28.775118, longitude: -81.2432,
        name: "Orlando Sanford International Airport",
        city: "Orlando", countryId: "US"
    ),
    Airport(
        id: "SFO",
        latitude: 37.615215, longitude: -122.38988,
        name: "SFO International Airport",
        city: "San Francisco", countryId: "US"
    ),
    Airport(
        id: "SHJ",
        latitude: 25.320873, longitude: 55.52029,
        name: "Sharjah Airport",
        city: "Sharjah", countryId: "AE"
    ),
    Airport(
        id: "SIN",
        latitude: 1.361173, longitude: 103.990204,
        name: "Changi Airport",
        city: "Singapore", countryId: "SG"
    ),
    Airport(
        id: "SJC",
        latitude: 37.366737, longitude: -121.92638,
        name: "Norman Y. Mineta San Jose International Airport",
        city: "San Jose", countryId: "US"
    ),
    Airport(
        id: "SJD",
        latitude: 23.162354, longitude: -109.717285,
        name: "Los Cabos Airport",
        city: "San Jose Cabo", countryId: "MX"
    ),
    Airport(
        id: "SJO",
        latitude: 9.998238, longitude: -84.20408,
        name: "Juan Santamaria International Airport",
        city: "San Jose", countryId: "CR"
    ),
    Airport(
        id: "SLC",
        latitude: 40.785645, longitude: -111.980675,
        name: "Salt Lake City International Airport",
        city: "Salt Lake City", countryId: "US"
    ),
    Airport(
        id: "SMF",
        latitude: 38.692284, longitude: -121.5937,
        name: "Sacramento International Airport",
        city: "Sacramento", countryId: "US"
    ),
    Airport(
        id: "SMX",
        latitude: 34.905, longitude: -120.45778,
        name: "Santa Maria Public  Airport",
        city: "Santa Maria", countryId: "US"
    ),
    Airport(
        id: "SOF",
        latitude: 42.688343, longitude: 23.41443,
        name: "Sofia Airport",
        city: "Sofia", countryId: "BG"
    ),
    Airport(
        id: "SOU",
        latitude: 50.950726, longitude: -1.361318,
        name: "Southampton Airport",
        city: "Southampton", countryId: "GB"
    ),
    Airport(
        id: "SPC",
        latitude: 28.626389, longitude: -17.755556,
        name: "La Palma Airport",
        city: "Santa Cruz De La Palma", countryId: "ES"
    ),
    Airport(
        id: "SSH",
        latitude: 27.979357, longitude: 34.385254,
        name: "Sharm el-Sheik Intl Airport",
        city: "Sharm el Sheikh", countryId: "EG"
    ),
    Airport(
        id: "STL",
        latitude: 38.74228, longitude: -90.36587,
        name: "Lambert-St. Louis International Airport",
        city: "Saint Louis", countryId: "US"
    ),
    Airport(
        id: "STN",
        latitude: 51.889267, longitude: 0.262703,
        name: "Stansted Airport",
        city: "London", countryId: "GB"
    ),
    Airport(
        id: "STR",
        latitude: 48.69073, longitude: 9.193624,
        name: "Echterdingen Airport",
        city: "Stuttgart", countryId: "DE"
    ),
    Airport(
        id: "STS",
        latitude: 38.50889, longitude: -122.81167,
        name: "Sonoma County Airport",
        city: "Santa Rosa", countryId: "US"
    ),
    Airport(
        id: "SVG",
        latitude: 58.88215, longitude: 5.629197,
        name: "Sola Airport",
        city: "Stavanger", countryId: "NO"
    ),
    Airport(
        id: "SVO",
        latitude: 55.966324, longitude: 37.416573,
        name: "Sheremetyevo Airport",
        city: "Moscow", countryId: "RU"
    ),
    Airport(
        id: "SVQ",
        latitude: 37.423477, longitude: -5.900136,
        name: "Sevilla Airport",
        city: "Sevilla", countryId: "ES"
    ),
    Airport(
        id: "SXB",
        latitude: 48.544876, longitude: 7.627674,
        name: "Entzheim Airport",
        city: "Strasbourg", countryId: "FR"
    ),
    Airport(
        id: "SXF",
        latitude: 52.370277, longitude: 13.521388,
        name: "Schoenefeld Airport",
        city: "Berlin", countryId: "DE"
    ),
    Airport(
        id: "SXM",
        latitude: 18.044722, longitude: -63.11406,
        name: "Princ. Juliana Airport",
        city: "Saint Maarten", countryId: "SX"
    ),
    Airport(
        id: "SYD",
        latitude: -33.932922, longitude: 151.1799,
        name: "Kingsford Smith Airport",
        city: "Sydney", countryId: "AU"
    ),
    Airport(
        id: "TCM",
        latitude: 47.176666, longitude: -122.56461,
        name: "McChord Air Force Base",
        city: "Tacoma", countryId: "US"
    ),
    Airport(
        id: "TFS",
        latitude: 28.044443, longitude: -16.5725,
        name: "Sur Reina Sofia Airport",
        city: "Tenerife", countryId: "ES"
    ),
    Airport(
        id: "TLL",
        latitude: 59.416622, longitude: 24.798702,
        name: "Ulemiste Airport",
        city: "Tallinn", countryId: "EE"
    ),
    Airport(
        id: "TLS",
        latitude: 43.63007, longitude: 1.374321,
        name: "Blagnac Airport",
        city: "Toulouse", countryId: "FR"
    ),
    Airport(
        id: "TLV",
        latitude: 32.000454, longitude: 34.870743,
        name: "Ben Gurion International Airport",
        city: "Tel Aviv-Yafo", countryId: "IL"
    ),
    Airport(
        id: "TNG",
        latitude: 35.726288, longitude: -5.912898,
        name: "Boukhalef Airport",
        city: "Tangier", countryId: "MA"
    ),
    Airport(
        id: "TPA",
        latitude: 27.97987, longitude: -82.535416,
        name: "Tampa International Airport",
        city: "Tampa", countryId: "US"
    ),
    Airport(
        id: "TPE",
        latitude: 25.07639, longitude: 121.22389,
        name: "Taiwan Taoyuan International Airport",
        city: "Taipei", countryId: "TW"
    ),
    Airport(
        id: "TRD",
        latitude: 63.454285, longitude: 10.917863,
        name: "Vaernes Airport",
        city: "Trondheim", countryId: "NO"
    ),
    Airport(
        id: "TRF",
        latitude: 59.178085, longitude: 10.251807,
        name: "Sandefjord Airport",
        city: "Oslo", countryId: "NO"
    ),
    Airport(
        id: "TSF",
        latitude: 45.655113, longitude: 12.204444,
        name: "Treviso Airport",
        city: "Venice", countryId: "IT"
    ),
    Airport(
        id: "TSN",
        latitude: 39.122627, longitude: 117.3399,
        name: "Tianjin Airport",
        city: "Tianjin", countryId: "CN"
    ),
    Airport(
        id: "TUS",
        latitude: 32.12069, longitude: -110.93737,
        name: "Tucson International Airport",
        city: "Tucson", countryId: "US"
    ),
    Airport(
        id: "TXL",
        latitude: 52.553944, longitude: 13.291722,
        name: "Tegel Airport",
        city: "Berlin", countryId: "DE"
    ),
    Airport(
        id: "UIO",
        latitude: -0.145528, longitude: -78.49053,
        name: "Mariscal Sucre Airport",
        city: "Quito", countryId: "EC"
    ),
    Airport(
        id: "VCE",
        latitude: 45.502285, longitude: 12.337947,
        name: "Marco Polo Airport",
        city: "Venice", countryId: "IT"
    ),
    Airport(
        id: "VIE",
        latitude: 48.11972, longitude: 16.563583,
        name: "Vienna International Airport",
        city: "Vienna", countryId: "AT"
    ),
    Airport(
        id: "VIS",
        latitude: 36.319443, longitude: -119.39389,
        name: "Visalia Airport",
        city: "Visalia", countryId: "US"
    ),
    Airport(
        id: "VLC",
        latitude: 39.49179, longitude: -0.473475,
        name: "Valencia Airport",
        city: "Valencia", countryId: "ES"
    ),
    Airport(
        id: "WAW",
        latitude: 52.170906, longitude: 20.97329,
        name: "Frederic Chopin Airport",
        city: "Warsaw", countryId: "PL"
    ),
    Airport(
        id: "YEG",
        latitude: 53.307377, longitude: -113.584045,
        name: "Edmonton International Airport",
        city: "Edmonton", countryId: "CA"
    ),
    Airport(
        id: "YLW",
        latitude: 49.95154, longitude: -119.38139,
        name: "Kelowna Airport",
        city: "Kelowna", countryId: "CA"
    ),
    Airport(
        id: "YUL",
        latitude: 45.457714, longitude: -73.74991,
        name: "Pierre Elliott Trudeau International Airport",
        city: "Montreal", countryId: "CA"
    ),
    Airport(
        id: "YUM",
        latitude: 32.668606, longitude: -114.599266,
        name: "Yuma International Airport",
        city: "Yuma", countryId: "US"
    ),
    Airport(
        id: "YVR",
        latitude: 49.1947, longitude: -123.17919,
        name: "Vancouver International Airport",
        city: "Vancouver", countryId: "CA"
    ),
    Airport(
        id: "YYC",
        latitude: 51.131393, longitude: -114.01055,
        name: "Calgary International Airport",
        city: "Calgary", countryId: "CA"
    ),
    Airport(
        id: "YYZ",
        latitude: 43.681583, longitude: -79.61146,
        name: "Pearson International Airport",
        city: "Toronto", countryId: "CA"
    ),
    Airport(
        id: "ZAG",
        latitude: 45.733242, longitude: 16.06152,
        name: "Pleso Airport",
        city: "Zagreb", countryId: "HR"
    ),
    Airport(
        id: "ZCL",
        latitude: 22.8, longitude: -102.55,
        name: "La Calera Airport",
        city: "Zacatecas", countryId: "MX"
    ),
    Airport(
        id: "ZIH",
        latitude: 17.606783, longitude: -101.464066,
        name: "Ixtapa/Zihuatanejo Internacional Airport",
        city: "Ixtapa/Zihuatanejo", countryId: "MX"
    ),
    Airport(
        id: "ZRH",
        latitude: 47.450603, longitude: 8.561746,
        name: "Zurich Airport",
        city: "Zurich", countryId: "CH"
    )
]
