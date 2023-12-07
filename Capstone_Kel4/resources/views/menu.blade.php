<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>Document</title>
</head>

<body class="bg-[#f8b400]">
    <div class="">
        <div class="flex justify-between border-b-2 border-black">
            <div class='ml-10'>
                <img src="img/logo.png" alt="" />
            </div>
            <div class='grid place-items-center mr-10'>
                <ul class='flex gap-4'>
                    <a href="beranda">
                        <li class='font-bold text-xl'>Home</li>
                    </a>
                    <a href="menu">
                        <li class='font-bold text-xl'>Menu</li>
                    </a>
                    <a href="pesanan">
                        <li class='font-bold text-xl'>My Order</li>
                    </a>
                    <a href="about">
                        <li class='font-bold text-xl'>About Us</li>
                    </a>
                </ul>
            </div>
        </div>
        <h1 class="ml-10 text-6xl font-bold mt-10">Our Menu</h1>
        <div class="mx-10 mt-20 grid grid-cols-3 gap-x-10 gap-y-20">
            <!-- 1 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/CoklatKeju.jpg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Manis Coklat Keju</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak manis dengan perpaduan rasa coklat dan keju</p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
            <!-- 2 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/KejuJagung.jpg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Manis Keju Jagung</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak manis dengan perpaduan rasa keju dan jagung</p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
            <!-- 3 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/Pizza.jpg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Manis Pizza</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak manis dengan pilihan rasa dalam bentuk pizza</p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
            <!-- 4 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/AyamJamur.jpeg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Asin Ayam Jamur</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak asin ayam jamur dengan bumbu ayam yang meresap dan jamur pilihan</p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
            <!-- 5 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/SapiOriginal.jpeg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Asin Sapi Original</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak asin sapi original dengan dagin sapi berkualitas</p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
            <!-- 6 -->
            <div class="w-full h-full bg-[#feecaa] relative rounded-xl">
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-plus bg-yellow-300 absolute right-0" viewBox="0 0 16 16">
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                </svg>
                <img src="img/Bowl.jpeg" alt="" class="w-[200px] h-[200px] rounded-full absolute -top-16 left-9">
                <div class="grid grid-cols-2">
                    <h1 class="mt-36 text-2xl font-bold ml-5 py-2">Martabak Asin Bowl</h1>
                    <div class="ml-5 mt-10">
                        <p class="text-xl -mt-2">Martabak asin yang disajikan dalam bentuk bowl sehingga lebih praktis </p>
                        <p class="text-xl mt-5">Stock: 50</p>
                        <p class="text-xl mt-">Rp.20.000</p>
                    </div>
                </div>
                <div class="">
                </div>
            </div>
        </div>
    </div>
</body>

</html>