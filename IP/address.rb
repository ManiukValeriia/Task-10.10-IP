# Оголошення методу
def valid_ipv4?(address)
  # Розділяємо адресу на частини, розділені крапками
  parts = address.split('.')
  
  # Перевірка, чи є 4 частини
  return false if parts.length != 4
  
  # Перевірка кожної частини
  parts.all? do |part|
    # Перевірка, чи є частина числом, і чи воно між 0 та 255
    part.match?(/^\d+$/) &&
    part.to_i.between?(0, 255) &&
    part == part.to_i.to_s # Перевірка на відсутність ведучих нулів
  end
end

# Тести
puts valid_ipv4?('192.168.1.1')   # true
puts valid_ipv4?('0.0.0.0')       # true
puts valid_ipv4?('255.255.255.255') # true
puts valid_ipv4?('256.256.256.256') # false
puts valid_ipv4?('192.168.01.1')   # false (ведучий нуль)
puts valid_ipv4?('192.168.1.01')   # false (ведучий нуль)
puts valid_ipv4?('192.168.1')      # false (не вистачає частин)
puts valid_ipv4?('192.168.1.256')  # false (число перевищує 255)
puts valid_ipv4?('192.168.a.1')    # false (не число)
