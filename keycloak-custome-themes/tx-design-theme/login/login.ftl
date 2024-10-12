<header style="position: fixed; top: 10px; right: 20px; z-index: 80;">
  <div>
    <!-- Language switcher placeholder -->
  </div>
</header>

<main style="display: flex; flex-direction: column; align-items: center; height: 100vh; background: linear-gradient(135deg, #ece9e6, #ffffff); position: relative;">
  <!-- Background Circles -->
  <svg
    style="position: absolute; inset: 0; pointer-events: none;"
    viewBox="0 0 960 540"
    width="100%"
    height="100%"
    preserveAspectRatio="xMidYMax slice"
    xmlns="http://www.w3.org/2000/svg"
  >
    <g style="fill: none; stroke: currentColor; opacity: 0.15; stroke-width: 80;">
      <circle r="230" cx="200" cy="50"></circle>
      <circle r="230" cx="760" cy="480"></circle>
    </g>
  </svg>

  <!-- Form Container -->
  <div style="margin-top: auto; margin-bottom: auto; width: 100%; max-width: 400px; padding: 2rem; background: #ffffff; box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1); border-radius: 16px; text-align: center;">
    <!-- Logo -->
    <div style="width: 300px; margin: auto;">
      <img src="${url.resourcesPath}/img/txx.jpeg"   />
    </div>

    <!-- Title -->
    <h1 style="margin-top: 1.5rem; font-size: 1.8rem; font-weight: 700; color: #333;">Welcome Back!</h1>
    <p style="color: #666; margin-top: 0.5rem;">Don't have an account? <a href="${url.registrationUrl}" style="color: #595edd;">Sign Up</a></p>

    <!-- Form -->
    <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post" style="margin-top: 2rem;">
      <!-- Username Field -->
      <div style="margin-bottom: 1.5rem;">
        <label for="username" style="font-size: 0.9rem; color: #666;"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
        <input
          id="username"
          name="username"
          type="text"
          class="form-control"
          value="${(login.username!'')}"
          style="width: 100%; padding: 0.75rem; border: 1px solid #E2E8F0; border-radius: 8px; background-color: #F7FAFC;"
          required
          autofocus
          autocomplete="off"
        />
        <#if messagesPerField.existsError('username','password')>
          <span style="color: red; font-size: 0.85rem;">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
        </#if>
      </div>

      <!-- Password Field -->
      <div style="margin-bottom: 1.5rem;">
        <label for="password" style="font-size: 0.9rem; color: #666;">${msg("password")}</label>
        <input
          id="password"
          name="password"
          type="password"
          class="form-control"
          style="width: 100%; padding: 0.75rem; border: 1px solid #E2E8F0; border-radius: 8px; background-color: #F7FAFC;"
          required
          autocomplete="off"
        />
        <#if messagesPerField.existsError('username','password')>
          <span style="color: red; font-size: 0.85rem;">${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
        </#if>
      </div>

      <!-- Remember Me & Forgot Password -->
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
        <#if realm.rememberMe && !usernameEditDisabled??>
          <label style="font-size: 0.9rem; color: #666;">
            <input id="rememberMe" name="rememberMe" type="checkbox" /> ${msg("rememberMe")}
          </label>
        </#if>
        <#if realm.resetPasswordAllowed>
          <a href="${url.loginResetCredentialsUrl}" style="color: #595edd; font-size: 0.9rem;">${msg("doForgotPassword")}</a>
        </#if>
      </div>

      <!-- Sign In Button -->
      <div style="margin-top: 1rem;">
        <button type="submit" name="login" id="kc-login" style="width: 100%; padding: 0.75rem; background-color: #595edd; color: white; border: none; border-radius: 8px; font-size: 1rem; font-weight: bold;">${msg("doLogIn")}</button>
      </div>
    </form>

    <!-- Divider -->
    <div style="display: flex; align-items: center; margin: 2rem 0;">
      <hr style="flex: 1; border: none; border-top: 1px solid #E2E8F0;" />
      <span style="margin: 0 1rem; color: #666;">${msg("identity-provider-login-label")}</span>
      <hr style="flex: 1; border: none; border-top: 1px solid #E2E8F0;" />
    </div>

    <!-- Social Buttons -->
    <!-- Social providers buttons can go here -->
  </div>
</main>
