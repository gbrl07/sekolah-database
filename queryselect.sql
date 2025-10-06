SELECT * FROM siswa ORDER BY id;

SELECT id, nama, jurusan FROM siswa WHERE jurusan = 'IPA' ORDER BY id;

SELECT s.id, s.nama, s.jurusan, ROUND(AVG(n.nilai)::numeric,2) AS rata_nilai
FROM siswa s
JOIN nilai n ON s.id = n.siswa_id
GROUP BY s.id, s.nama, s.jurusan
ORDER BY rata_nilai DESC;
