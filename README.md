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
|     |           |                   |      TOTAL        |       $60       |


## Langkah Implementasi dan Konfigurasi 
I. Load Balancing
  
II. Instalasi app.py
  
III. Instalasi mongodb
Untuk mengakses mongodb sebagai database, perlu dilakukan beberapa hal berikut ini pada Digital Ocean.
1. Membuat cluster database dengan memilih datacenter negara dan memilih database engine berupa MongoDB

![WhatsApp Image 2023-12-14 at 23 34 29](https://github.com/aloybm/fp-tka-d1/assets/107543354/cc5bf370-b896-40d6-b11b-75a84dc82481)

2. Pada bagian Basic-Shared CPU, memilih plan berupa harga dan spesifikasi sesuai arsitektur yang telah dirancang sebelumnya

![WhatsApp Image 2023-12-14 at 23 34 41](https://github.com/aloybm/fp-tka-d1/assets/107543354/83554d28-cbfb-4f04-81f8-eec0560554d3)

3. Melakukan finalize dan klik create database cluster

![WhatsApp Image 2023-12-14 at 23 35 05](https://github.com/aloybm/fp-tka-d1/assets/107543354/99d38bdc-9b81-426d-bded-080d29140166)

4. Mengundur aplikasi MongoDB Composs GUI melalui `https://www.mongodb.com/try/download/compass`

5. Pada Digital Ocean, menyalin connection string pada bagian connection details public network dengan menyesuaikan user dan database yang digunakan 

   ![WhatsApp Image 2023-12-14 at 23 37 54](https://github.com/aloybm/fp-tka-d1/assets/107543354/7a0fe1cc-9e32-4389-81a3-f1342653abfd)

6. Connect menggunakan connection string dan menambahkan IP ke dalam database Digital Ocean

![WhatsApp Image 2023-12-14 at 23 40 15](https://github.com/aloybm/fp-tka-d1/assets/107543354/0094bdc4-df6d-47f8-b908-dc56f760ef73)

7. MongoDB telah terakses

![WhatsApp Image 2023-12-14 at 23 41 10](https://github.com/aloybm/fp-tka-d1/assets/107543354/491c3eb9-b82e-49ac-903f-6182aa0a212f)

  
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
Hasil pengujian load testing pada locust dilakukan dengan 2 kondisi, di mana yang pertama menggunakan docker, dan yang kedua menggunakan nginx. Dari sini didapatkan bahwa pada percobaan pertama yang menggunakan docker berjalan sangat lambat, sehingga dilakukan peralihan menggunakan nginx.
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/61d4a3fa-719c-40f7-88d8-6b896f119088)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/b7f7fdd9-7fab-498b-a42e-98353e8168d4)

2. Peak Concurrency Maksimum Dengan Spawn Rate 25 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/fae800a3-5fa1-44ee-8f09-b8691ca696d8)
   
3. Peak Concurrency Maksimum Dengan Spawn Rate 50 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/8681d078-f05f-42c3-8537-8261fe044f76)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/195f8526-4683-4149-b749-b9d7e37d5548)

4. Peak Concurrency Maksimum Dengan Spawn Rate 100 (60 detik)
![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/a5d0a8e7-9341-432c-af17-1936c2aa9345)

![image](https://github.com/aloybm/fp-tka-d1/assets/107543354/8c95350a-a02a-4d8c-9500-42bae0fd7209)

## Kendala yang Dihadapi
1. Pendaftaran pada bagian kartu kredit
2. Membutuhkan dana yang cukup besar untuk mengimplementasikan infrastruktur komputasi awan
3. Mengalami block account pada saat pengerjaan berlangsung
   
## Kesimpulan
Dapat disimpulkan bahwa dengan 1 juta rupiah per bulan (65 US$), server yang mampu menangani beban kerja hingga tingkat maksimum yaitu ... peak concurrency, dengan tingkat failure yang tetap 0% dalam semua skenario pengujian. Hasil uji testing yang kami lakukan aplikasi atau server belum dapat dikatakan baik sepenuhnya dan perlu adanya evaluasi terus menerus.
   
## Saran
1. Menggunakan koneksi jaringan yang lancar agar hasil load testing locust bertambah bagus
2. Jika ingin terus melakukan testing pada locust, isi dari database perlu diperhatikan
