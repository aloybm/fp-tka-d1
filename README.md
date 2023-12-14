# FP-TKA-D1
## Anggota Kelompok TKA D-1:
| Nama                   | NRP        |
| ---------------------- | ---------- |
| Wahyu Andhika Rizaldi  | 5027211003 |
| Aloysius Bataona M.    | 5027211008 |
| Salmaa Satifha Dewi    | 5027211011 |
| Sedtia Prakoso         | 5027211013 |
| Refaldi Agustian       | 5027211015 |

## Daftar Isi
- [Anggota Kelompok TKA D-1](#AnggotaKelompokTKAD-1)
- [Daftar Isi](#DaftarIsi)
- [Pengenalan Permasalahan](#PengenalanPermasalahan)
- [Desain Rancangan Arsitektur Komputasi Awan](#DesainRancanganArsitekturKomputasiAwan)
- [Spesifikasi Harga](#SpesifikasiHarga)
- [Langkah Implementasi dan Konfigurasi](#LangkahImplementasidanKonfigurasi)
- [Hasil Pengujian dan Analisis Loadtesting Menggunakan Locust](#HasilPengujiandanAnalisisLoadtestingMenggunakanLocust)
- [Kesimpulan](#Kesimpulan)
- [Saran](#Saran)

## Pengenalan Permasalahan
Sebagai lulusan Teknologi Informasi dan juga Ahli IT, kualifikasi kemampuan yang perlu dimiliki adalah kemampuan merancang, membangun, mengelola aplikasi berbasis komputer menggunakan layanan awan untuk memenuhi kebutuhan organisasi.  

Dengan diberikan sebuah aplikasi berbasis API dengan spesifikasi terlampir, selanjutnya adalah mendesain arsitektur cloud yang sesuai dengan kemampuan konfigurasi terbaik yang memiliki modal dana maksimal sejumlah 1 juta rupiah per bulan (65 US$).

1. **Get All Orders**
   - **Endpoint:** `GET /orders`
   - **Description:** Retrieve a list of all orders.
   - **Response:**
     ```json
     {
       "orders": [
         {"_id": "order_id_1", "product": "Product1", "quantity": 5, "customer_name": "John Doe", "customer_address": "123 Main St"},
         {"_id": "order_id_2", "product": "Product2", "quantity": 3, "customer_name": "Jane Smith", "customer_address": "456 Oak St"},
         // ...
       ]
     }
     ```

2. **Get a Specific Order by ID**
   - **Endpoint:** `GET /orders/<order_id>`
   - **Description:** Retrieve details of a specific order by its ID.
   - **Response:**
     ```json
     {
       "order": {"_id": "order_id", "product": "ProductX", "quantity": 8, "customer_name": "Alice Johnson", "customer_address": "789 Elm St"}
     }
     ```

3. **Create a New Order**
   - **Endpoint:** `POST /orders`
   - **Description:** Create a new order.
   - **Request:**
     ```json
     {
       "product": "ProductY",
       "quantity": 2,
       "customer_name": "Bob Anderson",
       "customer_address": "101 Pine St"
     }
     ```
   - **Response:**
     ```json
     {
       "message": "Order created successfully",
       "order": {"_id": "new_order_id", "product": "ProductY", "quantity": 2, "customer_name": "Bob Anderson", "customer_address": "101 Pine St"}
     }
     ```

4. **Update an Order by ID**
   - **Endpoint:** `PUT /orders/<order_id>`
   - **Description:** Update an existing order by its ID.
   - **Request:**
     ```json
     {
       "quantity": 10,
       "customer_address": "Updated Address"
     }
     ```
   - **Response:**
     ```json
     {
       "message": "Order updated successfully",
       "order": {"_id": "order_id", "product": "Updated Product", "quantity": 10, "customer_name": "Existing Name", "customer_address": "Updated Address"}
     }
     ```
     
5. **Delete an Order by ID**
   - **Endpoint:** `DELETE /orders/<order_id>`
   - **Description:** Delete an existing order by its ID.
   - **Response:**
     ```json
     {
       "message": "Order deleted successfully"
     }
     ```
  
6. **MongoDB Configuration**
   - **Database:** `orders_db`
   - **Connection URI:** `mongodb://localhost:27017/orders_db `

## Desain Rancangan Arsitektur Komputasi Awan
![Diagram Tanpa Judul-Copy of Halaman-1 drawio](https://github.com/Almambul/FP-TKA-D1/assets/107543354/743cd657-7cc6-4d69-9a06-1b8a5d8679ec)

## Spesifikasi Harga
| No. |   Nama    |    Spesifikasi    |       Fungsi      |   Harga/Bulan   |
| --- | --------- | ----------------- | ----------------- | --------------- |
|  1  | Droplet 1 | 1vCPU, 1GB Memory |   Load Balancer   |       $6        |
|  2  | Droplet 2 | 1vCPU, 2GB Memory |      Worker       |       $12       |
|  3  | Droplet 3 | 1vCPU, 2GB Memory |      Worker       |       $12       |
|  4  | Droplet 4 | 1vCPU, 2GB Memory |  Database Server  |       $30       |
|     |           |                   |                   |       $60      |


## Langkah Implementasi dan Konfigurasi 
- Load Balancing
  
- Instalasi app.py
  
- Instalasi mongodb

  
## Hasil Pengujian Endpoint Setiap API
1. Get All Orders
   - Endpoint: GET /orders
![WhatsApp Image 2023-12-14 at 23 21 11](https://github.com/aloybm/fp-tka-d1/assets/107543354/ba9f83de-3b9d-40fa-8853-8aab019e0618)
 
2. Get a Specific Order by ID
   - Endpoint: GET /orders/<order_id>
![WhatsApp Image 2023-12-14 at 23 21 47](https://github.com/aloybm/fp-tka-d1/assets/107543354/c0ba67e5-2664-41e6-97bf-cc993a2c872e)

3. Create a New Order
   - Endpoint: POST /orders
![WhatsApp Image 2023-12-14 at 23 22 46](https://github.com/aloybm/fp-tka-d1/assets/107543354/392b9349-a745-4146-baf4-ecf9d7e16398)

4. Update an Order by ID
   - Endpoint: PUT /orders/<order_id>
![WhatsApp Image 2023-12-14 at 23 23 19](https://github.com/aloybm/fp-tka-d1/assets/107543354/a5f487d2-538e-4857-b899-6d9b6dd8e522)

5. Delete an Order by ID
   - Endpoint: DELETE /orders/<order_id>
![WhatsApp Image 2023-12-14 at 23 20 20](https://github.com/aloybm/fp-tka-d1/assets/107543354/5c73ac43-a612-4b0c-89fb-a530a4ad4b86)

## Hasil Pengujian dan Analisis Loadtesting Menggunakan Locust
1. Request Per Seconds (RPS) maksimum (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/b7f7fdd9-7fab-498b-a42e-98353e8168d4)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/61d4a3fa-719c-40f7-88d8-6b896f119088)

2. Peak Concurrency Maksimum Dengan Spawn Rate 25 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/fae800a3-5fa1-44ee-8f09-b8691ca696d8)
   
3. Peak Concurrency Maksimum Dengan Spawn Rate 50 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/8681d078-f05f-42c3-8537-8261fe044f76)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/195f8526-4683-4149-b749-b9d7e37d5548)

4. Peak Concurrency Maksimum Dengan Spawn Rate 100 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/a5d0a8e7-9341-432c-af17-1936c2aa9345)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/8c95350a-a02a-4d8c-9500-42bae0fd7209)


## Kesimpulan
Dengan hasil-hasil ini, dapat disimpulkan bahwa dengan 1 juta rupiah per bulan (65 US$). Server yang mampu menangani beban kerja hingga tingkat maksimum yaitu ... peak concurrency, dengan tingkat failure yang tetap 0% dalam semua skenario pengujian. Dengan kondisi ini, aplikasi atau server dapat dianggap telah lulus pengujian load dengan baik.
   
## Saran
1. Cari  koneksi yang bagus agar locust bertambah bagus
2. Jika ingin terus melakukan testing pada locust, isi dari database perlu diperhatikan
