print("======================================")
print("||     Hexadecimal para Decimal     ||")
print("======================================")
Hex = input ("1-Digite o arquivo.txt que contém os Hexasdecimais: ")
output = input("2-Digite o arquivo.txt que devo salvar a saída: ")
ler = open(Hex, 'r')
for line in ler:
	line = line.split()
	for value in line:
		Dec = int(value, 16)
		with open(output, 'a') as arquive:
			print(Dec , end=" ", file=arquive)
ler.close()

arquivo = output
def quebrar_linha(output):
    with open(output, 'r') as f:
        conteudo = f.read()

    novo_conteudo = ''
    contador_espacos = 0
    for caractere in conteudo:
        novo_conteudo += caractere
        if caractere == ' ':
            contador_espacos += 1
            if contador_espacos == 16:
                novo_conteudo += '\n'
                contador_espacos = 0

    with open(output, 'w') as f:
        f.write(novo_conteudo)

nome_arquivo = output

quebrar_linha(nome_arquivo)

print("Done! :)")
