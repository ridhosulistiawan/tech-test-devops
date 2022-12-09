# Technical Test Folkatech
## _DevOps Engineer_

Repository ini dimaksudkan untuk memenuhi Technical Test dari Folkatech untuk posisi DevOps Engineer

## How to run Terraform Script :

- Perlu menyiapkan Access Key dan Secret Key dari akun AWS yang sudah disiapkan
- Ubah file `aws-ec2.tf` di baris ke 2 dan 3 sesuai access key dan secret key yang didapatkan
- Pastikan command `terraform` sudah tersedia dan siap digunakan

Untuk eksekusi Terraform bisa dengan command sebagai berikut :

1. Init Terraform, untuk mendownload package yang diperlukan saat eksekusi konfigurasi Terraform tersebut :

```sh
terraform init
```

2. Check konfigurasi Terraform untuk preview seluruh settingan yang akan di apply di AWS, sebagai berikut :

```sh
terraform plan
```

3. Setelah semuanya sesuai, eksekusi perintah berikut untuk apply config pada AWS :

```sh
terraform apply 
```

> semoga atas submission ini dapat memenuhi kualifikasi dan dapat lanjut ke proses 
> rekrutmen selanjutnya. Terima kasih

Salam,
Muhammad Ridho
