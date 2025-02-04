// Código JS para la comparación de imágenes
document.addEventListener('DOMContentLoaded', function () {
    const slider = document.querySelector('.custom-handle');
    const firstImage = document.querySelector('.c-mapimg-slider__first');
    const secondImage = document.querySelector('.c-mapimg-slider__second');
    
    let isDragging = false;

    slider.addEventListener('mousedown', (e) => {
        isDragging = true;
        document.body.style.cursor = 'ew-resize';
    });

    document.addEventListener('mousemove', (e) => {
        if (!isDragging) return;

        const sliderRect = slider.parentElement.getBoundingClientRect();
        const offsetX = e.clientX - sliderRect.left;
        const percentage = (offsetX / sliderRect.width) * 100;

        firstImage.style.clip = `rect(0, ${percentage}%, 100%, 0)`;
        secondImage.style.clip = `rect(0, 100%, 100%, ${percentage}%)`;
        slider.style.left = `${percentage}%`;
    });

    document.addEventListener('mouseup', () => {
        isDragging = false;
        document.body.style.cursor = 'default';
    });

    // So the slider is initialized at the correct position on page load
    window.dispatchEvent(new Event('mousemove'));
});