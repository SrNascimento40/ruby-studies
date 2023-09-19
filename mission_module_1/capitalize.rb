lambda_capitalize = -> (name) { puts name.capitalize}

def capitalize_name(lambda_capitalize)
    lambda_capitalize.call('walLaCe')
end

capitalize_name(lambda_capitalize)