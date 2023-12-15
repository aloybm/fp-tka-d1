# 🔥Final Project - Teknologi Komputasi Awan - D1🔥 
## Anggota Kelompok TKA D-1: 
| Nama                   | NRP        |
| ---------------------- | ---------- |
| Wahyu Andhika Rizaldi  | 5027211003 |
| Aloysius Bataona M.    | 5027211008 |
| Salmaa Satifha Dewi    | 5027211011 |
| Sedtia Prakoso         | 5027211013 |
| Refaldi Agustian       | 5027211015 |

## Daftar Isi
- [Anggota Kelompok TKA D-1](#Kelompok)
- [Daftar Isi](#Daftar_isi)
- [Pengenalan Permasalahan](#Permasalahan)
- [Desain Rancangan Arsitektur Komputasi Awan](#Arsitektur)
- [Spesifikasi Harga](#Spesifikasi)
- [Langkah Implementasi dan Konfigurasi](#Implementasi)
- [Hasil Pengujian dan Analisis Loadtesting Menggunakan Locust](#Loadtesting)
- [Kendala yang Dihadapi](#Kendala)
- [Daftar Isi](#DaftarIsi)
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
**A. Pembuatan Droplet**
1. Memilih server region yang akan digunakan.
   
![WhatsApp Image 2023-12-14 at 23 29 55](https://github.com/aloybm/fp-tka-d1/assets/107543354/43aaf511-d9c6-43f2-8009-5c0a4ea3a8b1)

2. Memilih image yang digunakan, dalam final project ini digunakan ubuntu sebagai imagenya.
   
![WhatsApp Image 2023-12-14 at 23 30 07](https://github.com/aloybm/fp-tka-d1/assets/107543354/dcdd014c-445c-4b55-b69c-cb6dc343e067)

3. Memilih tipe droplet sesuai dengan rancangan arsitektur yang diberikan dari shared CPU, tipe disk yang digunakan, hingga harga dan spesifikasinya.
   
![WhatsApp Image 2023-12-14 at 23 30 40](https://github.com/aloybm/fp-tka-d1/assets/107543354/5e5b567c-c579-4b3c-964a-1b9d278b3636)

4. Menerapkan autentikasi dengan menggunakan password, kemudian memasukkan password untuk didaftarkan.

![WhatsApp Image 2023-12-14 at 23 31 03](https://github.com/aloybm/fp-tka-d1/assets/107543354/f8470737-00be-4fc9-8f92-609c39ab7fea)

5. Melakukan finalize droplet dan klik create doplet.

![WhatsApp Image 2023-12-14 at 23 31 40](https://github.com/aloybm/fp-tka-d1/assets/107543354/873e332b-ba60-4b33-a0da-0c833571e509)

6. Melakukan instalasi Docker pada VM melalui `https://docs.docker.com/engine/install/ubuntu/`.

7. Masuk ke terminal dan masuk ke ssh.
![WhatsApp Image 2023-12-14 at 23 32 21](https://github.com/aloybm/fp-tka-d1/assets/107543354/b8fe0660-666a-41ed-b889-93ef27719f9a)

**B. Instalasi MongoDB <br>**
Untuk mengakses MongoDB sebagai database, perlu dilakukan beberapa hal berikut ini pada Digital Ocean.
1. Membuat cluster database dengan memilih datacenter negara dan memilih database engine berupa MongoDB.

![WhatsApp Image 2023-12-14 at 23 34 29](https://github.com/aloybm/fp-tka-d1/assets/107543354/cc5bf370-b896-40d6-b11b-75a84dc82481)

2. Pada bagian Basic-Shared CPU, memilih plan berupa harga dan spesifikasi sesuai arsitektur yang telah dirancang sebelumnya.

![WhatsApp Image 2023-12-14 at 23 34 41](https://github.com/aloybm/fp-tka-d1/assets/107543354/83554d28-cbfb-4f04-81f8-eec0560554d3)

3. Melakukan finalize dan klik create database cluster.

![WhatsApp Image 2023-12-14 at 23 35 05](https://github.com/aloybm/fp-tka-d1/assets/107543354/99d38bdc-9b81-426d-bded-080d29140166)

4. Mengundur aplikasi MongoDB Composs GUI melalui `https://www.mongodb.com/try/download/compass`.

5. Pada Digital Ocean, menyalin connection string pada bagian connection details public network dengan menyesuaikan user dan database yang digunakan.

![WhatsApp Image 2023-12-14 at 23 37 54](https://github.com/aloybm/fp-tka-d1/assets/107543354/7a0fe1cc-9e32-4389-81a3-f1342653abfd)

6. Connect menggunakan connection string dan menambahkan IP ke dalam database Digital Ocean.

![WhatsApp Image 2023-12-14 at 23 40 15](https://github.com/aloybm/fp-tka-d1/assets/107543354/0094bdc4-df6d-47f8-b908-dc56f760ef73)

7. MongoDB telah terakses.

![WhatsApp Image 2023-12-14 at 23 41 10](https://github.com/aloybm/fp-tka-d1/assets/107543354/491c3eb9-b82e-49ac-903f-6182aa0a212f)

**C. Load Balancing <br>**
Pada konfigurasi load balancing dilakukan 2 uji coba yaitu penggunaan Docker dan Nginx.
- Dengan penggunaan **Docker** dijalankan kode berikut pada lb-balancer.
```
FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
```
```
version: '3'
services:
  loadbalancer:
    build: .
    ports:
      - "80:80"
```
- Dengan penggunaan **Nginx** dijalankan kode nginx.conf dan script.sh pada lb-balancer.
Dari kedua uji coba, pada final project ini digunakan implementasi menggunakan Nginx, berikut adalah penjelasan mengenai kodenya.

**Konfigurasi Nginx**
Konfigurasi kode Nginx ini membuat server mendengarkan permintaan pada port 80 untuk semua nama server dan meneruskan permintaan tersebut ke salah satu dari dua server backend dengan menggunakan load balancing. Grup backend disebut "droplet" dan terdiri dari dua server dengan alamat IP dan port tertentu.
```
upstream droplet {
    server 165.22.245.44:8000;
    server 157.245.157.246:8000;
}

server {
    listen 80;
    server_name _;

    location / {
        proxy_pass http://droplet;
    }
}
```
Kode di bawah ini akan melakukan instalasi PHP, Nginx, dan PHP-FPM, kemudian mengonfigurasi Nginx sebagai load balancer dengan dua backend server. Konfigurasi Nginx disimpan di /etc/nginx/sites-available/loadbalancer dan diaktifkan dengan membuat symlink. Selain itu, konfigurasi default Nginx dihapus, dan layanan Nginx di-restart untuk menerapkan perubahan.
```
apt-get update
apt-get install php -y
apt install nginx php php-fpm -y

echo 'upstream loadbalancer {
  server 165.22.245.44:8000 ;
  server 157.245.157.246:8000 ;
}

server {
  listen 80;
  server_name _;

  location / {
    proxy_pass http://loadbalancer;
  }
}
' > /etc/nginx/sites-available/loadbalancer

ln -s /etc/nginx/sites-available/loadbalancer /etc/nginx/sites-enabled/jarkom

rm /etc/nginx/sites-enabled/default

service nginx restart
```

**D. Instalasi app.py <br>**
Menjalankan kode berikut pada setiap worker.
```
from flask import Flask, jsonify, request
from flask_pymongo import PyMongo
from bson import ObjectId

app = Flask(__name__)

# Configuration for MongoDB
app.config['MONGO_URI'] = 'mongodb+srv://doadmin:1738Px20nhKIrX65@db-mongodb-sgp1-84334-7ab46429.mongo.ondigitalocean.com/orders_db?tls=true&authSource=admin&replicaSet=db-mongodb-sgp1-84334'
mongo = PyMongo(app)

# Routes

# Get all orders
@app.route('/orders', methods=['GET'])
def get_orders():
    orders = mongo.db.orders.find()
    orders_list = []
    for order in orders:
        order['_id'] = str(order['_id'])  # Convert ObjectId to string
        orders_list.append(order)
    return jsonify({"orders": orders_list})

# Get a specific order by ID
@app.route('/orders/<string:order_id>', methods=['GET'])
def get_order(order_id):
    order = mongo.db.orders.find_one({'_id': ObjectId(order_id)})
    if order:
        order['_id'] = str(order['_id'])  # Convert ObjectId to string
        return jsonify({"order": order})
    else:
        return jsonify({"message": "Order not found"}), 404

# Create a new order
@app.route('/orders', methods=['POST'])
def create_order():
    data = request.json
    new_order = {
        'product': data['product'],
        'quantity': data['quantity'],
        'customer_name': data['customer_name'],
        'customer_address': data['customer_address']
    }
    result = mongo.db.orders.insert_one(new_order)
    new_order['_id'] = str(result.inserted_id)  # Convert ObjectId to string
    return jsonify({"message": "Order created successfully", "order": new_order})

# Update an order by ID
@app.route('/orders/<string:order_id>', methods=['PUT'])
def update_order(order_id):
    data = request.json
    updated_order = {
        'product': data.get('product'),
        'quantity': data.get('quantity'),
        'customer_name': data.get('customer_name'),
        'customer_address': data.get('customer_address')
    }
    mongo.db.orders.update_one({'_id': ObjectId(order_id)}, {'$set': updated_order})
    updated_order['_id'] = order_id
    return jsonify({"message": "Order updated successfully", "order": updated_order})

# Delete an order by ID
@app.route('/orders/<string:order_id>', methods=['DELETE'])
def delete_order(order_id):
    result = mongo.db.orders.delete_one({'_id': ObjectId(order_id)})
    if result.deleted_count > 0:
        return jsonify({"message": "Order deleted successfully"})
    else:
        return jsonify({"message": "Order not found"}), 404

if __name__ == '__main__':
    app.run(debug=True)
```
Kode ini menggunakan aplikasi Flask yang berfungsi sebagai API untuk melakukan operasi CRUD (Create, Read, Update, Delete) pada koleksi "orders" di MongoDB. Aplikasi ini dapat digunakan untuk mengelola data pesanan seperti mendapatkan daftar pesanan, mendapatkan pesanan berdasarkan ID, membuat pesanan baru, memperbarui pesanan, dan menghapus pesanan.

**C. Running Command <br>**
Dengan kondisi yang digunakan adalah Docker, untuk membuat Docker agar terus berjalan, maka perlu dojalankan command.
`docker-compose up --build -d`

Sebaliknya, sebagaimana yang digunakan pada pengerjaan ini menggunakan Nginx, maka perlu dijalankan command.
`bash script.sh`

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
Hasil pengujian load testing pada locust dilakukan dengan 2 kondisi, di mana yang pertama menggunakan Docker, dan yang kedua menggunakan Nginx. Dari sini didapatkan bahwa pada percobaan pertama yang menggunakan Docker berjalan sangat lambat, sehingga dilakukan peralihan menggunakan Nginx.
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
1. Pendaftaran pada bagian kartu kredit.
2. Membutuhkan dana yang cukup besar untuk mengimplementasikan infrastruktur komputasi awan.
3. Mengalami block account pada saat pengerjaan berlangsung.
   
## Kesimpulan
Dapat disimpulkan bahwa dengan 1 juta rupiah per bulan (65 US$), server yang mampu menangani beban kerja hingga tingkat maksimum yaitu ... peak concurrency, dengan tingkat failure yang tetap 0% dalam semua skenario pengujian. Hasil uji testing yang kami lakukan aplikasi atau server belum dapat dikatakan baik sepenuhnya dan perlu adanya evaluasi terus menerus.
   
## Saran
1. Menggunakan koneksi jaringan yang lancar agar hasil load testing locust bertambah bagus.
2. Jika ingin terus melakukan testing pada locust, isi dari database perlu diperhatikan.
