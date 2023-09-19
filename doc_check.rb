require "cpf_cnpj"

def check_cpf(cpf_number)
  if CPF.valid?(cpf_number)
    return "CPF informado é valido"
  else
    return "CPF informado é invalido"
  end
end

print 'Digite seu cpf: '
cpf_number = gets.chomp.to_i

result = check_cpf(cpf_number)

puts result

