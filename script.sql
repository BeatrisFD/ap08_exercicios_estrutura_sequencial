-- 1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
-- pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
-- [2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
-- envolvendo dias, meses, anos bissextos etc.
/* DO $$
DECLARE
    ano_nascimento INT;
    ano_atual INT;
    idade INT;
BEGIN
    ano_nascimento := fn_valor_aleatorio_entre(1980, 2000);
    ano_atual := fn_valor_aleatorio_entre(2010, 2020);

    idade := ano_atual - ano_nascimento;

    RAISE NOTICE 'Ano de nascimento: %', ano_nascimento;
    RAISE NOTICE 'Ano atual: %', ano_atual;
    RAISE NOTICE 'Idade: % anos', idade;
END;
$$ *
/
-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
-- exibir o valor total do terreno.
/* DO $$
DECLARE
    largura NUMERIC;
    comprimento NUMERIC;
    preco_m2 NUMERIC;
    area NUMERIC;
    valor_total NUMERIC;
BEGIN
    largura := fn_real_aleatorio_entre(1, 10);
    comprimento := fn_real_aleatorio_entre(1, 10);
    preco_m2 := fn_real_aleatorio_entre(60, 70);
    
    area := largura * comprimento;
    valor_total := area * preco_m2;

    RAISE NOTICE 'Largura: % m', ROUND(largura, 2);
    RAISE NOTICE 'Comprimento: % m', ROUND(comprimento, 2);
    RAISE NOTICE 'Área: % m²', ROUND(area, 2);
    RAISE NOTICE 'Preço por m²: R$ %', ROUND(preco_m2, 2);
    RAISE NOTICE 'Valor total do terreno: R$ %', ROUND(valor_total, 2);
END;
$$ */

-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
-- e a raiz quadrada de seu sucessor.
/* DO $$
DECLARE
    num INT;
    antecessor INT;
    sucessor INT;
    raiz_cubica NUMERIC;
    raiz_quadrada NUMERIC;
BEGIN
    num := fn_valor_aleatorio_entre(1, 100);
    antecessor := num - 1;
    sucessor := num + 1;

    raiz_cubica := POWER(antecessor, 1.0/3.0);
    raiz_quadrada := SQRT(sucessor);

    RAISE NOTICE 'Número gerado: %', num;
    RAISE NOTICE 'Antecessor: % | Raiz cúbica: %', antecessor, ROUND(raiz_cubica,2 );
    RAISE NOTICE 'Sucessor: % | Raiz quadrada: %', sucessor, ROUND(raiz_quadrada, 2);
END;
$$ */

-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
-- que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
/* DO $$
DECLARE
    a NUMERIC;
    b NUMERIC;
    c NUMERIC;
    delta NUMERIC;
BEGIN
    a := ROUND(fn_real_aleatorio_entre(1, 10), 2);
    b := ROUND(fn_real_aleatorio_entre(1, 10), 2);
    c := ROUND(fn_real_aleatorio_entre(1, 10), 2);

    -- Cálculo do delta
    delta := ROUND((b * b) - (4 * a * c), 2);

    -- Resultados
    RAISE NOTICE 'a = %', a;
    RAISE NOTICE 'b = %', b;
    RAISE NOTICE 'c = %', c;
    RAISE NOTICE 'Delta = %', delta;
END;
$$ */

-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
-- temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.
/* DO $$
DECLARE
    temp_celsius NUMERIC;
    temp_fahrenheit NUMERIC;
BEGIN
    temp_celsius := fn_real_aleatorio_entre(20, 30);
    temp_fahrenheit := (temp_celsius * 9/5) + 32;
    RAISE NOTICE 'Temperatura em Celsius: %', temp_celsius;
    RAISE NOTICE 'Temperatura em Fahrenheit: %', temp_fahrenheit;
END;
$$ */

-- 1.2 Faça um programa que gere um valor real e o exiba.
/* DO $$
DECLARE
    lim_inferior NUMERIC := 1;
    lim_superior NUMERIC := 10;
    aleatorio NUMERIC;
BEGIN
    aleatorio := RANDOM() * (lim_superior - lim_inferior) + lim_inferior;
    RAISE NOTICE 'Valor aleatório gerado: %', aleatorio;
END;
$$ */

-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
/* DO $$
DECLARE
    lim_infe INT := 1;
    lim_superior INT := 100;
    aleatorio INT;
BEGIN
    aleatorio := FLOOR(RANDOM() * (lim_superior - lim_infe + 1) + lim_infe)::INT;
    RAISE NOTICE 'Valor aleatório gerado: %', aleatorio;
END;
$$ */