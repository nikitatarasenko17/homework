# Написать функцию перевода размеров женского белья из международного во все остальные. 
# Внeтри функции нужно просто обращаться к правильно составленному словарю.
sizes  = {  "XXS": {"Russia": "42", "Germany": "36", "USA": "8", "France": "38", "Great Britain": "24", "waist circumference": "63-65", "hip girth": "89-92"},
            "XS": {"Russia": "44", "Germany": "38", "USA": "10", "France": "40", "Great Britain": "26", "waist circumference": "66-69", "hip girth": "93-96"},
            "S": {"Russia": "46", "Germany": "40", "USA": "12", "France": "42", "Great Britain": "28", "waist circumference": "70-74", "hip girth": "97-101"},
            "M": {"Russia": "48", "Germany": "42", "USA": "14", "France": "44", "Great Britain": "30", "waist circumference": "75-78", "hip girth": "102-104"},
            "L": {"Russia": "50", "Germany": "44", "USA": "16", "France": "46", "Great Britain": "32", "waist circumference": "79-83", "hip girth": "105-108"},
            "XL": {"Russia": "52", "Germany": "46", "USA": "18", "France": "48", "Great Britain": "34", "waist circumference": "84-89", "hip girth": "109-112"},
            "XXL": {"Russia": "54", "Germany": "48", "USA": "20", "France": "50", "Great Britain": "36", "waist circumference": "90-94", "hip girth": "113-117"},
            "XXXL": {"Russia": "56", "Germany": "50", "USA": "22", "France": "52", "Great Britain": "38", "waist circumference": "95-97", "hip girth": "118-122"}}
def convert(size, country_parametr):
    for key, value in sizes.items():
        for k in value:
            if (key == size and k == country_parametr):
                print(size,'->', country_parametr, ":", value[k])
size = str(input("Введите размер в международном формате: "))
country_parametr = str(input("Введите название страны или желаемый параметр: "))
convert(size, country_parametr)
       