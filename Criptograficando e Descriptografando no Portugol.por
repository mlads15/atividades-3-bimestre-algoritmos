programa
{
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> tx
	
	const cadeia alfabeto[26] = {"A", "B", "C", "D", "E", "F", "G", "I", "J", "K", "L", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
	
	funcao inicio()
	{
		descriptografar("QIR FXNWXUI WIFHQRNRKB", 3)
	}

	funcao criptografar(cadeia texto, inteiro chave){
		 
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frase
		logico esta_no_alfabeto

		numero_letras_frase = tx.numero_caracteres(texto)

		//percorrer cada uma das letras da frase que foi informada
		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso

			letra_caracter = tx.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)

			//para percorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0; i < 26; i++){
			se(letra == alfabeto[i]){
				//escreva("A letra ", letra, " está na posição ", i, ".")

				posicao = i + chave

				posicao = posicao % 26
				
				escreva(alfabeto[posicao])
				
				esta_no_alfabeto = verdadeiro
				pare
					
						}
					}
				se(esta_no_alfabeto == falso){
					escreva(letra)				
				}

			}
		
		}//fim da função criptografar

		funcao descriptografar(cadeia texto, inteiro chave){ 
			
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frase
		logico esta_no_alfabeto

		numero_letras_frase = tx.numero_caracteres(texto)

		//percorrer cada uma das letras da frase que foi informada
		para(inteiro h=0; h < numero_letras_frase; h++){

			esta_no_alfabeto = falso

			letra_caracter = tx.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)

			//para percorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0; i < 26; i++){
			se(letra == alfabeto[i]){
				//escreva("A letra ", letra, " está na posição ", i, ".")

				posicao = i - chave

				//posicao = posicao % 26 --. Pode apagar!

				se(posicao < 0){
					posicao = posicao + 26
				}

				escreva(alfabeto[posicao])
				
				esta_no_alfabeto = verdadeiro
				pare
					
						}
					}
				se(esta_no_alfabeto == falso){
					escreva(letra)				
			}
	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */