<div class="absolute top-0 right-0 md:right-40 z-80">
  <!-- Add language selector logic here for Keycloak -->
</div>

<div class="flex flex-col sm:flex-row items-center md:items-start sm:justify-center md:justify-start flex-auto min-w-0">
  <div class="md:flex md:items-center md:justify-end w-full sm:w-auto md:h-full md:w-1/2 py-8 px-4 sm:p-12 md:p-16 sm:rounded-2xl md:rounded-none sm:shadow md:shadow-none sm:bg-card">
    <div class="w-full max-w-160 sm:w-140 mx-auto sm:mx-0">

      <!-- Logo -->
      <div class="w-36">
        <img src="https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9" />
      </div>

      <!-- Title -->
      <div class="mt-8 text-4xl font-extrabold tracking-tight leading-tight">
        <#if messages.exists("signupTitle")>
          ${messages.get("signupTitle")}
        </#if>
      </div>
      <div class="flex items-baseline mt-0.5 font-medium">
        <div>${messages.get("alreadyAccount")}</div>
        <a class="ml-1 text-primary-500 hover:underline" href="${url.loginUrl}">${messages.get("loginAccount")}</a>
      </div>

      <!-- Sign Up form -->
      <form class="mt-8" id="register-form" action="${url.registrationActionUrl}" method="post">

        <!-- First Name and Last Name -->
        <div class="flex sm:flex-row flex-col justify-between gap-3">
          <div class="w-full sm:w-1/2">
            <label for="firstName">${messages.get("firstName")}</label>
            <input type="text" id="firstName" name="firstName" value="${user.firstName!}" class="w-full"/>
            <#if messages.exists("missingFirstName")>
              <div class="text-red-500">${messages.get("missingFirstName")}</div>
            </#if>
          </div>

          <div class="w-full sm:w-1/2">
            <label for="lastName">${messages.get("lastName")}</label>
            <input type="text" id="lastName" name="lastName" value="${user.lastName!}" class="w-full"/>
            <#if messages.exists("missingLastName")>
              <div class="text-red-500">${messages.get("missingLastName")}</div>
            </#if>
          </div>
        </div>

        <!-- Email -->
        <div class="w-full">
          <label for="email">${messages.get("email")}</label>
          <input type="email" id="email" name="email" value="${user.email!}" class="w-full"/>
          <#if messages.exists("missingEmail")>
            <div class="text-red-500">${messages.get("missingEmail")}</div>
          </#if>
        </div>

        <!-- Password -->
        <div class="flex sm:flex-row flex-col justify-between gap-3">
          <div class="w-full sm:w-1/2">
            <label for="password">${messages.get("password")}</label>
            <input type="password" id="password" name="password" class="w-full"/>
            <#if messages.exists("missingPassword")>
              <div class="text-red-500">${messages.get("missingPassword")}</div>
            </#if>
          </div>

          <div class="w-full sm:w-1/2">
            <label for="password-confirm">${messages.get("passwordConfirm")}</label>
            <input type="password" id="password-confirm" name="password-confirm" class="w-full"/>
            <#if messages.exists("passwordMismatch")>
              <div class="text-red-500">${messages.get("passwordMismatch")}</div>
            </#if>
          </div>
        </div>

        <!-- Terms and Conditions -->
        <div class="inline-flex items-end w-full mt-1.5">
          <input type="checkbox" id="tos" name="tos"/>
          <label for="tos">${messages.get("termsAndConditions")}</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="fuse-mat-button-large w-full mt-6" id="kc-login">
          ${messages.get("createAccount")}
        </button>
      </form>
    </div>
  </div>

  <div class="relative hidden md:flex flex-auto items-center justify-center w-1/2 h-full p-16 lg:px-28 overflow-hidden bg-gray-800 dark:border-l">
    <!-- Add background SVG or custom content as needed -->
    <div class="z-10 relative w-full max-w-2xl">
      <div class="text-7xl font-bold leading-none text-gray-100">
        ${messages.get("welcomeTo")} <br> ${messages.get("appName")}
      </div>
      <div class="mt-6 text-lg tracking-tight leading-6 text-gray-400">
        ${messages.get("welcomeDescription")}
      </div>
    </div>
  </div>
</div>
