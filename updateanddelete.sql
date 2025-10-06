UPDATE siswa
SET jurusan = 'Multimedia'
WHERE nama = 'Eko'
RETURNING *;

DELETE FROM nilai
WHERE id = 1
RETURNING *;

SELECT * FROM siswa WHERE nama = 'Eko';
SELECT * FROM nilai WHERE id = 1; -- harus kosong / tidak ada setelah delete
