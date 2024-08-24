document.querySelectorAll('.updateStatusBtn').forEach(button => {
    button.addEventListener('click', function () {
        const invoiceId = this.closest('tr').getAttribute('data-invoice-id');
        document.getElementById('invoiceId').value = invoiceId;
        document.getElementById('updateStatusPopup').style.display = 'block';
    });
});

// Đóng popup khi nhấn vào nút Close
document.querySelector('.close').addEventListener('click', function () {
    document.getElementById('updateStatusPopup').style.display = 'none';
});

// Đóng popup khi nhấn vào bất cứ đâu ngoài popup
window.onclick = function(event) {
    if (event.target == document.getElementById('updateStatusPopup')) {
        document.getElementById('updateStatusPopup').style.display = 'none';
    }
};