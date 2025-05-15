--Actividades del examen--
                                                
                                            --1--
--Cuántas canciones tiene el álbum unplugged?-- 
SELECT Count (*) AS "Cantidad de canciones" FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
WHERE a.Title = "Unplugged";
                                            --2--
--Mostrar los artistas que tienen 30 o más canciones ordenadas del que tiene más al que tiene menos.-- 
SELECT ar.Name AS Artista, COUNT(t.TrackId) AS "Cantidad de canciones"
FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
JOIN artists ar ON a.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
HAVING COUNT(t.TrackId) >= 30
ORDER BY "Cantidad de canciones" DESC;
                                            --3--

--Insertar 6 canciones que elijan, con sus respectivos datos.(fijense en la estructura de la tabla que datos tiene que usar)-- 
INSERT INTO tracks (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES --Puse valores falopas pero parecidos
('En la ciudad de la furia', 347, 1, 1, 'Soda Stereo', 220000, 5100000, 0.99),
('Cuando pase el temblor',   347, 1, 1, 'Soda Stereo', 230000, 5200000, 0.99),
('Persiana Americana',       347, 1, 1, 'Soda Stereo', 240000, 5300000, 1.29),
('Profugo',                  347, 1, 1, 'Soda Stereo', 250000, 5400000, 0.99),
('Tratame suvamente',        347, 1, 1, 'Soda Stereo', 260000, 5500000, 0.99),
('Signos',                   347, 1, 1, 'Soda Stereo', 270000, 5600000, 1.49);

                                            --4--
--Modificar el nombre de una canción insertada, y al segundo dato ingresado modificar los milisegundos.-- 
UPDATE tracks 
SET name = "cmabio bakano", Milliseconds = 231465
WHERE name = "cmabio bakano" ;
                                            --5--
--Borrar dos datos agregados y modificados con una sola sentencia de borrar--
DELETE FROM tracks 
WHERE TrackId BETWEEN 3504 AND 3509

