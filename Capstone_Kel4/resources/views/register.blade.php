<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>Register</title>
</head>
<body>
    <div>
        <div class="grid grid-cols-2 h-[940px] mx-auto">
            <div class=' bg-slate-700 h-[940px]'>
                <img src="img/1.png" alt="" class='object-cover w-full h-full' />
            </div>
            <div class='bg-[#f8b400] flex flex-col items-center'>
                <div class='mt-72 flex flex-col items-center'>
                    <h1 class='text-[40px] font-bold'>REGIST TO</h1>
                    <h1 class='text-[40px] font-bold'>MARTABAK DJOERAGAN</h1>
                </div>
                <div class='w-[509px] mt-14'>
                    <h1 class='font-bold'>Username</h1>
                    <input class='w-[509px] h-[60px] rounded-2xl border-2' type="text" />
                    <h1 class='font-bold'>Password</h1>
                    <input class='w-[509px] h-[60px] rounded-2xl border-2' type="text" />
                    <h1 class='font-bold'> Confirm Password</h1>
                    <input class='w-[509px] h-[60px] rounded-2xl border-2' type="text" />
                </div>
                <div class='w-[496px] h-[55px] bg-black rounded-2xl flex justify-center mt-5'>
                    <button class='text-white mx-auto'>Regist</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>