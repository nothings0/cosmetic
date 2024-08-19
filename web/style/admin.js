/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');
//
//allSideMenu.forEach(item=> {
//	const li = item.parentElement;
//
//	item.addEventListener('click', function () {
//		allSideMenu.forEach(i=> {
//			i.parentElement.classList.remove('active');
//		})
//		li.classList.add('active');
//	})
//});


// Lấy các phần tử cần sử dụng
const addProductBtn = document.getElementById('addProductBtn');
const popup = document.getElementById('popup');
const closeBtn = document.querySelector('.close-btn');

// Mở popup khi nhấn nút "Thêm Product"
addProductBtn.addEventListener('click', function() {
    popup.style.display = 'block';
});

// Đóng popup khi nhấn vào nút close (x)
closeBtn.addEventListener('click', function() {
    popup.style.display = 'none';
});

// Đóng popup khi nhấn bên ngoài nội dung popup
window.addEventListener('click', function(event) {
    if (event.target == popup) {
        popup.style.display = 'none';
    }
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})







const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})

