<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>Document</title>
</head>

<body class="bg-[#f8b400]">
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
    <div class="grid grid-cols-2 p-36">
        <div class="w-[700px] h-[450px] border-[8px] border-black rounded-xl relative">
            <img src="img/Store.jpg" alt="" class="w-full h-full object-cover absolute left-4 bottom-4">
        </div>
        <div class="flex flex-col justify-center">
            <p class="text-4xl font-bold">About Me</p>
            <p class="text-xl mt-5">Martabak Djoeragan adalah salah satu martabak yang terkenal dan disukai banyak
                orang. Dipekanbaru saja martabak Djoeragan memiliki yaitu Jl. Sekolah (Rumbai), Jl. Durian,
                Jl. Harapan Raya, Jl. H.R.Subrantas (Panam), Jalan sudirman, dan Jl. Kaharudin Nasution
                (Marpoyan). Diantara 6 cabang tersebut project capstone mengenai proses manufaktur yang
                terjadi di martabak Djoeragan team capstone akan meneliti cabang Jl. Sekolah (Rumbai).</p>
        </div>
    </div>
</body>

</html>