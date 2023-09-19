capitals = Hash.new
capitals = {acre: "Rio Branco", sao_paulo: "São Paulo"}
capitals[:minas_gerais] = "Belo horizonte"
puts capitals
puts capitals[:acre]
capitals.delete(:acre)
puts capitals
