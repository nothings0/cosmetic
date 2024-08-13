/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    let currentUrl = new URL(window.location);
    currentUrl.searchParams.set("type", "register")
    window.history.pushState({}, "", currentUrl)
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    let currentUrl = new URL(window.location);
    currentUrl.searchParams.set("type", "login")
    window.history.pushState({}, "", currentUrl)
    container.classList.remove("active");
});
