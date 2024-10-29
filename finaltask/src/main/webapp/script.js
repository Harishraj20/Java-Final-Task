const closeButton = document.querySelector(".close-button");
const addUserModal = document.querySelector("#addUserModal");
const createUserButton = document.querySelector(".create-button");

createUserButton.addEventListener("click", () => {
    addUserModal.style.display = "flex";
});

closeButton.addEventListener("click", () => {
    addUserModal.style.display = "none";
});