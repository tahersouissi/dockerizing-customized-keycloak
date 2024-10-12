<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Keycloak Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="font-[sans-serif] bg-white md:h-screen">
  <div class="grid md:grid-cols-2 items-center gap-8 h-full">
    <div class="max-md:order-1 p-4">
      <img src="https://readymadeui.com/signin-image.webp" class="lg:max-w-[85%] w-full h-full object-contain block mx-auto" alt="registration-image" />
    </div>

    <div class="flex items-center md:p-8 p-6 bg-[#0C172C] h-full lg:w-11/12 lg:ml-auto">
      <form class="max-w-lg w-full mx-auto mt-8" action="${url.registrationAction}" method="post">
        <!-- Hidden redirect URI -->
        <input type="hidden" name="redirect_uri" value="${url.loginUrl}">

        <div class="mb-12">
          <h3 class="text-3xl font-bold text-yellow-400">Create an account</h3>
        </div>

        <!-- Username Field -->
        <div>
          <label class="text-black text-xs block mb-2">Username</label>
          <input name="username" type="text" required class="w-full bg-[#1E293B] text-sm text-black border-b border-gray-300 focus:border-yellow-400 px-2 py-3 outline-none" placeholder="Enter your username" value="${(register.formData.username! '')}" />
          <#if messagesPerField.existsError('username')>
              <p class="text-red-500 text-sm mt-1">${kcSanitize(messagesPerField.getFirstError('username'))?no_esc}</p>
          </#if>
        </div>

        <!-- Full Name Field -->
        <div class="mt-8">
          <label class="text-black text-xs block mb-2">Full Name</label>
          <input name="name" type="text" required class="w-full bg-[#1E293B] text-sm text-black border-b border-gray-300 focus:border-yellow-400 px-2 py-3 outline-none" placeholder="Enter your full name" />
        </div>

        <!-- Email Field -->
        <div class="mt-8">
          <label class="text-black text-xs block mb-2">Email</label>
          <input name="email" type="email" required class="w-full bg-[#1E293B] text-sm text-black border-b border-gray-300 focus:border-yellow-400 px-2 py-3 outline-none" placeholder="Enter your email" />
          <#if messagesPerField.existsError('email')>
              <p class="text-red-500 text-sm mt-1">${kcSanitize(messagesPerField.getFirstError('email'))?no_esc}</p>
          </#if>
        </div>

        <!-- Password Field -->
        <div class="mt-8">
          <label class="text-black text-xs block mb-2">Password</label>
          <input name="password" type="password" required class="w-full bg-[#1E293B] text-sm text-black border-b border-gray-300 focus:border-yellow-400 px-2 py-3 outline-none" placeholder="Enter your password" />
          <#if messagesPerField.existsError('password')>
              <p class="text-red-500 text-sm mt-1">${kcSanitize(messagesPerField.getFirstError('password'))?no_esc}</p>
          </#if>
        </div>

        <!-- Confirm Password Field -->
        <div class="mt-8">
          <label class="text-black text-xs block mb-2">Confirm Password</label>
          <input name="password-confirm" type="password" required class="w-full bg-[#1E293B] text-sm text-black border-b border-gray-300 focus:border-yellow-400 px-2 py-3 outline-none" placeholder="Confirm your password" />
          <#if messagesPerField.existsError('password-confirm')>
              <p class="text-red-500 text-sm mt-1">${kcSanitize(messagesPerField.getFirstError('password-confirm'))?no_esc}</p>
          </#if>
        </div>

        <!-- Terms of Service -->
        <div class="flex items-center mt-8">
          <input id="agreements" name="agreements" type="checkbox" class="h-4 w-4 shrink-0 rounded" required />
          <label for="agreements" class="text-black ml-3 block text-sm">
            I accept the <a href="javascript:void(0);" class="text-yellow-500 font-semibold hover:underline ml-1">Terms and Conditions</a>
          </label>
        </div>

        <!-- Submit Button -->
        <div class="mt-12">
          <button type="submit" class="w-max shadow-xl py-3 px-6 text-sm text-gray-800 font-semibold rounded-md bg-transparent bg-yellow-400 hover:bg-yellow-500 focus:outline-none">
            Register
          </button>
          <p class="text-sm text-black mt-8">Already have an account? <a href="${url.loginUrl}" class="text-yellow-400 font-semibold hover:underline ml-1">Login here</a></p>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
