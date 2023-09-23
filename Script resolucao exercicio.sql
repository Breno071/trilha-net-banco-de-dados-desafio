/****** Script do comando SelectTopNRows de SSMS  ******/
--1
SELECT [Nome]
      ,[Ano]
  FROM [Filmes].[dbo].[Filmes]

--2
SELECT [Nome]
      ,[Ano]
  FROM [Filmes].[dbo].[Filmes]
  ORDER BY ANO ASC

--3
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [Nome] LIKE '%De Volta para o Futuro%'

--4
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [Ano] = 1997

--5
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [Ano] > 2000

--6
SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
  FROM [Filmes].[dbo].[Filmes]
  WHERE [Duracao] BETWEEN 101 AND 149
  ORDER BY Duracao ASC

--7
SELECT [Ano]
	  ,COUNT(Ano) AS 'Quantidade'
  FROM [Filmes].[dbo].[Filmes]
  GROUP BY Ano
  ORDER BY Quantidade DESC

--8
SELECT [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores]
  WHERE Genero = 'M'

--9
SELECT [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores]
  WHERE Genero = 'F'
  ORDER BY PrimeiroNome

--10
SELECT Nome, Genero
	FROM [Filmes].[dbo].[Filmes] AS FILMES
	INNER JOIN Filmes.dbo.FilmesGenero ON FILMES.Id = FilmesGenero.IdFilme
	INNER JOIN Filmes.dbo.Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Nome, Genero
	FROM [Filmes].[dbo].[Filmes] AS FILMES
	INNER JOIN Filmes.dbo.FilmesGenero ON FILMES.Id = FilmesGenero.IdFilme
	INNER JOIN Filmes.dbo.Generos ON Generos.Id = FilmesGenero.IdGenero
	WHERE Genero LIKE 'Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
	FROM [Filmes].[dbo].[Filmes] AS FILMES
	INNER JOIN Filmes.dbo.ElencoFilme ON FILMES.Id = ElencoFilme.IdFilme
	INNER JOIN Filmes.dbo.Atores ON Atores.Id = ElencoFilme.IdAtor
