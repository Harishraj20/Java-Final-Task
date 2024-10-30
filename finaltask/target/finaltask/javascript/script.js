    const closeButtonForLogin = document.querySelector("#close-button-for-login");
    const closeButtonForAdd = document.querySelector("#close-button-for-add");
    const addUserModal = document.querySelector("#add-user-modal");
    const createUserButton = document.querySelector(".create-button");
    const loginUserButton = document.querySelector(".login-button");
    const loginUserModal = document.querySelector("#login-user-modal");

    createUserButton.addEventListener("click", () => {
        addUserModal.style.display = "flex";
    });

    loginUserButton.addEventListener("click", () => {
        loginUserModal.style.display = "flex";
    });

    closeButtonForAdd.addEventListener("click", () => {
        addUserModal.style.display = "none";
    });

    closeButtonForLogin.addEventListener("click", () => {
        loginUserModal.style.display = "none";
    });
