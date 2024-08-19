

// Lấy tất cả các nút tăng và giảm và input
document.querySelectorAll('.decrease_button').forEach(button => {
    button.addEventListener('click', function() {
        const tr = this.closest('tr');
        const quantityInput = tr.querySelector('.pus_input');
        let currentValue = parseInt(quantityInput.value);
        if (currentValue > 1) {
            quantityInput.value = currentValue - 1;
        }
    });
});

document.querySelectorAll('.increase_button').forEach(button => {
    button.addEventListener('click', function() {
        const tr = this.closest('tr');
        const quantityInput = tr.querySelector('.pus_input');
        let currentValue = parseInt(quantityInput.value);
        quantityInput.value = currentValue + 1;
    });
});
