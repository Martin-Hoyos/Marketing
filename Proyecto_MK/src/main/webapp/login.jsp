<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
</head>
<body class="h-screen flex items-center justify-center bg-gray-100">

    <div class="flex w-full h-full">
        <!-- Video Section -->
        <div class="w-1/2 h-full hidden md:flex items-center justify-center bg-blue-500">
            <video class="w-full h-full object-cover" autoplay loop muted>
                <source src="video.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>

        <!-- Form Section -->
        <div class="w-full md:w-1/2 h-full flex items-center justify-center bg-white">
            <div class="w-full max-w-md p-8 bg-white rounded-lg shadow-lg">
                <h2 class="text-2xl font-bold text-center mb-6">Sign In</h2>
                <form>
                    <div class="mb-4">
                        <label class="block text-gray-700">Email</label>
                        <input type="email" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700">Password</label>
                        <input type="password" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                    </div>
                    <button type="submit" class="w-full py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500">Login</button>
                </form>
                <p class="text-center text-gray-600 mt-4">
                    Don't have an account? <a href="#" class="text-blue-500 hover:underline">Sign Up</a>
                </p>
            </div>
        </div>
    </div>

</body>
</html>