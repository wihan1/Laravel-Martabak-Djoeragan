<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>Beranda</title>
</head>

<body class="bg-[#f8b400]">
    <div class="flex justify-between border-b-2 border-black">
    <a href="http://127.0.0.1:8000/admin/">     
    <div class='ml-10'>
            <img src="img/logo.png" alt="" />
        </div>
        </a>
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
    <div class="grid grid-cols-2">
        <div class="flex flex-col justify-center ml-20">
            <p class="text-8xl font-bold">Order Your</p>
            <p class="text-8xl">Favorite Menu</p>
            <p class="text-2xl">
                The best martabak ever by serving various types of martabak with a
                unique taste on your tongue
            </p>
            <button class="bg-black rounded-2xl text-white w-[20%] mt-8 text-xl px-8 py-4">Order Now</button>
        </div>
        <div class="flex justify-end items-center h-full">
            <div class=" h-[60%] w-[70%] rounded rounded-l-2xl">
                <img src="img/m2.jpg" alt="" class="w-full h-full object-cover rounded rounded-l-2xl" />
            </div>
        </div>
    </div>
</body>

</html>