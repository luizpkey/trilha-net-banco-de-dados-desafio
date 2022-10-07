
use Filmes;
-- 1 - Buscar o nome e ano dos filmes ( Exercicio 1 )
SELECT Nome
     , Ano
  FROM Filmes
;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano ( Exercicio 2 )
SELECT Nome
     , Ano
	 , Duracao
  FROM Filmes
  ORDER BY Ano
;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração ( Exercicio 3 )
SELECT Nome
     , Ano
	 , Duracao
  FROM Filmes
  WHERE Nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997 ( Exercicio 4 )
SELECT Nome
     , Ano
	 , Duracao
  FROM Filmes
  WHERE ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000 ( Exercicio 5 )
SELECT Nome
     , Ano
	 , Duracao
  FROM Filmes
  WHERE ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente ( Exercicio 6 )
SELECT Nome
     , Ano
	 , Duracao
  FROM Filmes
  WHERE Duracao > 100 and Duracao < 150 -- Between 101 and 149 :(
  ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente ( Exercicio 7 )
SELECT 
       Ano
	 , COUNT(*) 
  FROM filmes 
  GROUP BY ANO
  ORDER BY Sum( duracao ) desc
  ;

--Nota para chegar no print eu usaria essa query
  SELECT 
       Ano
	 , COUNT(*) 
  FROM filmes 
  GROUP BY ANO
  ORDER BY 2 desc
  ;


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome ( Exercicio 8 )
SELECT
       id
     , PrimeiroNome
     , UltimoNome 
   FROM Atores
   WHERE Genero = 'M'
   ;

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome ( Exercicio 9 )
SELECT
       id
     , PrimeiroNome
     , UltimoNome 
   FROM Atores
   WHERE Genero = 'F'
   ORDER BY PrimeiroNome
   ;

-- 10 - Buscar o nome do filme e o gênero ( Exercicio 10 )
SELECT 
       Nome
	 , Genero
   FROM Filmes
   INNER JOIN FilmesGenero ON 
      filmes.Id = 
	  FilmesGenero.IdFilme
   INNER JOIN Generos ON 
      Generos.Id = 
	  FilmesGenero.IdGenero
   ;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério" ( Exercicio 11 )
SELECT 
       Nome
	 , Genero
   FROM Filmes
   INNER JOIN FilmesGenero ON 
      filmes.Id = 
	  FilmesGenero.IdFilme
   INNER JOIN Generos ON 
      Generos.Id = 
	  FilmesGenero.IdGenero
   WHERE Genero = 'Mistério'
   ;
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel ( Exercicio 11 )
SELECT 
       Nome
	 , PrimeiroNome
     , UltimoNome
	 , Papel
   FROM Filmes
   INNER JOIN ElencoFilme ON 
      filmes.Id = 
	  ElencoFilme.IdFilme
   INNER JOIN Atores ON 
      Atores.Id = 
	  ElencoFilme.IdAtor
   ;