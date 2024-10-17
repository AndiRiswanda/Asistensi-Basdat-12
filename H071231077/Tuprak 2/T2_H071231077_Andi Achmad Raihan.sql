SELECT productCode 'kode produk',
productName 'nama produk',
quantityInStock 'jumlah stok'
 FROM products
WHERE quantityInStock > 5000 AND quantityInStock < 6000;

SELECT orderNumber 'nomor pesanan',
orderDate 'tanggal pesanan',
status ' status pesanan',
customerNumber 'nomor pelanggan'
 FROM orders
 
 WHERE STATUS != 'shipped'; 
 
 
 
 
 
 SELECT employeeNumber 'nomor pegawai',
 firstName 'nama depan',
 lastName 'nama belakang',
 email,
 jobTitle 'jabatan' FROM employees
 ORDER BY firstName DESC
 LIMIT 10;
 
 SELECT productCode 'kode produk',
 productName 'namaproduk',
 productLine 'lini produk',
 buyPrice 'harga beli' FROM products
 LIMIT 5, 10;
 
 
 
 SELECT DISTINCT country 'negara',
 city 'kota' FROM customers
 ORDER BY country, city DESC;