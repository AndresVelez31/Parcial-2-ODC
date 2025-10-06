// =========================================
// Parte entera de la raíz cuadrada
// =========================================

// Variables:
// num  = número base (RAM[16])
// i    = contador / candidato (RAM[17])
// sqr  = i*i temporal (RAM[18])
// res  = resultado final (RAM[19])
// cnt  = contador auxiliar para multiplicar (RAM[20])

// -----------------------------------------
// Inicialización
// -----------------------------------------

// Guardamos en num el número (ej: 16)
@3
D=A
@num
M=D

// Inicializamos el incrementador de prueba en 0
@i
M=0

// Inicializamos sqr = 0 -> representa i*i
@sqr
M=0

// Inizializamos el resultado en 0
@res
M=0

// -----------------------------------------
// Bucle principal: ir probando i
// -----------------------------------------
(LOOP)
    // i = i+1
    @i
    M=M+1

    // reinicializamos sqr = 0 -> representa i*i
    @sqr
    M=0

    // cnt = i  (vamos a hacer sumas repetidas para i*i) -> Con este se va a hacer la suma como tal
    @i
    D=M
    @cnt
    M=D

// -----------------------------------------
// Calcular i*i (sqr) usando sumas
// -----------------------------------------
(SUMA_SQR)
    @cnt
    D=M
    @AFTER_SUMA
    D;JEQ        // si cnt==0 salir

    @i
    D=M
    @sqr
    M=M+D        // sqr += i

    @cnt
    M=M-1
    @SUMA_SQR
    0;JMP


(AFTER_SUMA)
    // Comparar sqr con num para revisar
    @sqr
    D=M
    @num
    D=D-M        // D = sqr - num

    @END
    D;JGT        // si sqr > num (resultado positivo >0) -> terminamos

    // Si no, res = i
    @i
    D=M
    @res
    M=D

    // Repetir
    @LOOP
    0;JMP

// -----------------------------------------
// Fin del programa
// -----------------------------------------
(END)
@END
0;JMP

