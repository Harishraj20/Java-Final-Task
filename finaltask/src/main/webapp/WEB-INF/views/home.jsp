<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <link href="<c:url value='/css/style.css' />" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
      integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="home-title" id="title">Hello</div>
    <div class="container">
      <button class="create-button" id="homebutton">Create User</button>
      <button class="login-button" id="homebutton">Login User</button>
      <button class="view-button" id="homebutton">view Details</button>
    </div>

    <div class="userModal" id="add-user-modal" style="display: none">
      <div class="modal-content">
        <div class="heading">
          <h3 id="modal-title">ADD USERS</h3>
          <span class="close-button" id="close-button-for-add"
            ><i class="fa-regular fa-circle-xmark fa-lg"></i
          ></span>
        </div>
        <p class="error-message"></p>
        <form
          id="userForm"
          class="addUserForm"
          action="/finaltask/addUser"
          onsubmit="return validateFields()"
          method="post"
        >
          <input type="hidden" name="customerId" id="customerId" />
          <div class="form-elements">
            <label for="name">User Name:</label>
            <input
              type="text"
              name="username"
              id="name"
              placeholder="Enter User Name"
            />
          </div>
          <div id="nameError" class="error"></div>

          <div class="form-elements">
            <label for="userPassword">Password:</label>
            <input
              type="password"
              name="password"
              id="userPassword"
              class="password"
              placeholder="Enter Password"
            />
          </div>
          <div id="ageError" class="error"></div>

          <div class="form-elements">
            <label for="confirm-password">Confirm Password:</label>
            <input
              type="password"
              name="confirmPassword"
              id="confirm-password"
              class="password"
              placeholder="Re Enter the Password"
            />
          </div>

          <div class="form-button">
            <input class="reset-button" type="reset" value="Reset" />
            <input
              class="submit-button"
              type="submit"
              value="Submit"
              id="form-submit"
            />
          </div>
        </form>
      </div>
    </div>

    <div class="userLoginModal" id="login-user-modal" style="display: none">
      <div class="modal-content-for-Login">
        <div class="heading-for-Login ">
          <h3 id="modal-title">LOGIN USERS</h3>
          <span class="close-button" id="close-button-for-login"
            ><i class="fa-regular fa-circle-xmark fa-lg"></i
          ></span>
        </div>
        <p class="error-message"></p>
        <form
          class="userForm"
          id="loginUserForm"
          action="/finaltask/addUser"
          onsubmit="return validateFields()"
          method="post"
        >
          <div class="form-elements">
            <label for="loginname">User Name:</label>
            <input
              type="text"
              name="username"
              id="loginname"
              placeholder="Enter User Name"
            />
          </div>
          <div id="nameError" class="error"></div>

          <div class="form-elements">
            <label for="loginPassword">Password:</label>
            <input
              type="password"
              name="loginPassword"
              id="loginPassword"
              class="password"
              placeholder="Enter Password"
            />
          </div>
          <div id="ageError" class="error"></div>

          <div class="form-button">
            <input class="reset-button" type="reset" value="Reset" />
            <input
              class="submit-button"
              type="submit"
              value="Login"
              id="form-login"
            />
          </div>
        </form>
      </div>
    </div>
    <script src="<c:url value='/javascript/script.js' />"></script>
  </body>
</html>
