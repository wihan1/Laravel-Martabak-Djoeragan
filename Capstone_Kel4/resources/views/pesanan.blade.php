<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    @vite('resources/css/app.css')
</head>

<body class="bg-[#f8b400]">
    <div>
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
        <h1 class="ml-10 text-6xl font-bold mt-10">Your Order</h1>
        <div class="grid grid-cols-2 mt-10">
            <!-- kiri -->
            <div class="flex flex-col gap-6">
                <!-- 1 -->
                <div class="w-[80%] py-1 bg-white flex gap-10 items-center ml-12 rounded-xl ">
                    <div class="w-32 h-32 rounded-full overflow-hidden flex items-center ml-10">
                        <img src="img/KejuJagung.jpg" alt="" class="w-full h-full object-cover">
                    </div>
                    <p class="text-xl font-bold">Martabak Manis Keju Jagung</p>
                    <p class="text-xl">1</p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-x ml-10" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
                </div>
                <!-- 2 -->
                <div class="w-[80%] py-1 bg-white flex gap-10 items-center ml-12 rounded-xl ">
                    <div class="w-32 h-32 rounded-full overflow-hidden flex items-center ml-10">
                        <img src="img/SapiOriginal.jpeg" alt="" class="w-full h-full object-cover">
                    </div>
                    <p class="text-xl font-bold">Martabak Asin Sapi Original</p>
                    <p class="text-xl">1</p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-x ml-10" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
                </div>
                <!-- 3 -->
                <div class="w-[80%] py-1 bg-white flex gap-10 items-center ml-12 rounded-xl ">
                    <div class="w-32 h-32 rounded-full overflow-hidden flex items-center ml-10">
                        <img src="img/CoklatKeju.jpg" alt="" class="w-full h-full object-cover">
                    </div>
                    <p class="text-xl font-bold">Martabak Manis Keju Coklat</p>
                    <p class="text-xl">1</p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-x ml-10" viewBox="0 0 16 16">
                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                    </svg>
                </div>
                <div class="px-10 ">
                    <hr>
                </div>
                <div class="flex justify-between px-10">
                    <p>Sub total</p>
                    <p>Rp.60.000</p>
                </div>
                <div class="flex justify-between px-10">
                    <p>Delivery Fee</p>
                    <p>Rp.5.000</p>
                </div>
                <div class="px-10">
                    <hr>
                </div>
                <div class="flex justify-between px-10">
                    <p>Total</p>
                    <p>Rp.65.000</p>
                </div>
            </div>
            <!-- kanan -->
            <div class="ml-16">
                <h1 class="text-2xl">Payment Method</h1>
                <div class="w-[80%] border-2  px-8 mt-10 rounded-xl">
                    <p class="text-4xl">Transfer Bank</p>
                </div>
                <div class="w-[80%] border-2  px-8 mt-10 rounded-xl">
                    <p class="text-4xl">Cash On Delivery</p>
                </div>
                <button class="w-[70%] bg-black text-white mt-28 text-xl ml-12 rounded-xl">Checout</button>
            </div>
        </div>
    </div>
</body>

</html>