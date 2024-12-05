const handleLogin = async () => {
    const userIdInput = document.getElementById("user-id");
    const passwordInput = document.getElementById("password");
  
    const userId = userIdInput.value;
    const password = passwordInput.value;
  
    const user = {
      userId: userId,
      password: password,
    };
  
    const userInfo = await fetchUserInfo(user);

    const errorElement = document.getElementById("user-login-error");

    //user data did not match with database, show Register First message
    if (userInfo.length === 0) {
      errorElement.innerHTML = "<h3>Register First! User not found.</h3>";
      errorElement.classList.remove("hidden");
    } else {
      errorElement.classList.add("hidden");
      localStorage.setItem("loggedInUser", JSON.stringify(userInfo[0]));
      window.location.href = "/post.html";
    
    

    //save user information before jumping to the next page
    localStorage.setItem("loggedInUser", JSON.stringify(userInfo[0]));

    //then make a jump to new page
    window.location.href = "/post.html";
}
  };
  
  const fetchUserInfo = async (user) => {
    let data;
    try {
      const res = await fetch("http://localhost:5000/getUserInfo", {
        method: "POST",
        headers: {
          "content-type": "application/json",
        },
        body: JSON.stringify(user),
      });
  
      data = await res.json();
    } catch (e) {
      console.error("Error fetching user info:", e);
    } finally {
      return data;
    }
  };

  