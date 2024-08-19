const decreaseButton = document.querySelector('.decrease_button');
const increaseButton = document.querySelector('.increase_button');
const quantityInput = document.querySelector('.pus_input');

// Hàm giảm số lượng
decreaseButton.addEventListener('click', function() {
    let currentValue = parseInt(quantityInput.value);
    if (currentValue > 1) {
        quantityInput.value = currentValue - 1;
    }
});

// Hàm tăng số lượng
increaseButton.addEventListener('click', function() {
    let currentValue = parseInt(quantityInput.value);
    quantityInput.value = currentValue + 1;
});
