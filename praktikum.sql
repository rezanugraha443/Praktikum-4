//1 mahasiswa yang mengambil matkul
SELECT COUNT(DISTINCT mahasiswa.`nim`) AS mahasiswa_yang_mengambil_matkul FROM mahasiswa INNER JOIN ambil_mk
ON mahasiswa.`nim` = ambil_mk.`nim`

//2 urut berdasarkan jenkel
SELECT jenis_kelamin, COUNT(jenis_kelamin)
AS jumlah FROM mahasiswa LEFT OUTER JOIN ambil_mk
ON mahasiswa.`nim` = ambil_mk.`nim`
WHERE ambil_mk.`nim` IS NULL
GROUP BY jenis_kelamin

//3 
//nim dan nama mahasiswa yang mengambil matakuliah beserta kode_mk
dana nama_mk yang diambilnya
//explicit ver.
SELECT mahasiswa.`nim`, mahasiswa.`nama`, mata_kuliah.`kode_mk`, nama_mk
FROM mahasiswa 
INNER JOIN ambil_mk
ON mahasiswa.`nim` = ambil_mk.`nim`
INNER JOIN mata_kuliah
ON mata_kuliah.`kode_mk` = ambil_mk.`kode_mk`


//implicit
SELECT mahasiswa.`nim`, mahasiswa.`nama`, 
mata_kuliah.`kode_mk`, mata_kuliah.`nama_mk`
FROM mahasiswa, mata_kuliah, ambil_mk
WHERE mata_kuliah.`kode_mk` = ambil_mk.`kode_mk`
AND mahasiswa.`nim` = ambil_mk.`nim`

//4
//nim,nama, dan total sks yang diambil oleh mahasiswa
//explicit 
SELECT mahasiswa.`nim`, mahasiswa.`nama`, SUM(sks) AS jumlah_sks
FROM mahasiswa
INNER JOIN ambil_mk
ON mahasiswa.`nim` = ambil_mk.`nim`
INNER JOIN mata_kuliah
ON mata_kuliah.`kode_mk` = ambil_mk.`kode_mk`
GROUP BY mahasiswa.`nama` HAVING SUM(sks) > 4 
AND SUM(sks) < 10

//5 
//matkul yang tidak diambil mhs
SELECT mata_kuliah.`kode_mk`, mata_kuliah.`nama_mk`, 
mata_kuliah.`sks`, mata_kuliah.`semester`
FROM mata_kuliah
LEFT OUTER JOIN ambil_mk
ON mata_kuliah.`kode_mk` = ambil_mk.`kode_mk`
LEFT OUTER JOIN mahasiswa
ON mahasiswa.`nim` = ambil_mk.`nim`
WHERE mahasiswa.`nim` IS NULL