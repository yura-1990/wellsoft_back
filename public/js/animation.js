// Get the canvas element and its context
const canvas = document.getElementById('snowfallCanvas');
const ctx = canvas.getContext('2d');

// Set canvas size
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

// Snowflake setup
let snowflakes = [];
let snowflakeCount = window.innerWidth > 1200 ? 150 : 50;
let snowPile = Array(canvas.width).fill(0); // Tracks snow accumulation

// Default speed factor
let speedFactor = 0.3;

// Handle resizing the canvas
window.addEventListener('resize', () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    snowPile = Array(canvas.width).fill(0); // Reset snowpile on resize
});

// Function to generate random colors for snowflakes
const randomColor = () => {
    const colors = ['#17b6e5', '#79c072', '#cce7ff']; // Snowflake colors
    return colors[Math.floor(Math.random() * colors.length)];
};

// Function to generate snowflakes
const createSnowflakes = () => {
    for (let i = 0; i < snowflakeCount; i++) {
        snowflakes.push({
            x: Math.random() * canvas.width,
            y: Math.random() * canvas.height,
            size: Math.random() * 6 + 4,
            speed: Math.random() * 0.5 + 1, // Falling speed
            color: randomColor(),
            drift: Math.random() * 1 - 0.5, // Horizontal drift
        });
    }
};

// Function to draw a snowflake
const drawSnowflake = (x, y, size, color) => {
    ctx.save();
    ctx.translate(x, y);
    ctx.strokeStyle = color;
    ctx.lineWidth = 1.5;
    ctx.beginPath();

    for (let i = 0; i < 6; i++) {
        ctx.moveTo(0, 0);
        ctx.lineTo(0, -size);
        ctx.translate(0, -size / 2);
        ctx.moveTo(0, 0);
        ctx.lineTo(size / 4, -size / 4);
        ctx.moveTo(0, 0);
        ctx.lineTo(-size / 4, -size / 4);
        ctx.translate(0, size / 2);
        ctx.rotate((Math.PI / 180) * 60);
    }

    ctx.stroke();
    ctx.restore();
};

// Function to update snowflakes and animations
const updateSnowflakes = () => {
    for (const snowflake of snowflakes) {
        snowflake.y += snowflake.speed * speedFactor; // Speed controlled by speedFactor

        // Apply speed acceleration as snowflakes approach the bottom
        if (snowflake.y + snowflake.size >= canvas.height - snowPile[Math.floor(snowflake.x)]) {
            snowflake.speed += 0.1; // Accelerate snowflakes
            snowflake.speed = Math.min(snowflake.speed, 8); // Max speed

            if (Math.floor(snowflake.x) >= 0 && Math.floor(snowflake.x) < canvas.width) {
                snowPile[Math.floor(snowflake.x)] += snowflake.size;
            }

            snowflake.y = -snowflake.size; // Reset snowflake to top
            snowflake.x = Math.random() * canvas.width;
        }

        // Snowflake horizontal movement (wind effect)
        snowflake.x += snowflake.drift;

        if (snowflake.x < 0) snowflake.x = canvas.width;
        if (snowflake.x > canvas.width) snowflake.x = 0;
    }
};

// Function to draw everything
const drawSnowflakesScene = () => {
    ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas

    // Draw snowflakes
    for (const snowflake of snowflakes) {
        drawSnowflake(snowflake.x, snowflake.y, snowflake.size, snowflake.color);
    }

    // Draw snowpile
    ctx.fillStyle = '#ffffff';
    for (let i = 0; i < canvas.width; i++) {
        if (snowPile[i] > 0) {
            ctx.fillRect(i, canvas.height - snowPile[i], 1, snowPile[i]);
        }
    }
};

// Function to animate the snowfall
const animate = () => {
    drawSnowflakesScene();
    updateSnowflakes();
    requestAnimationFrame(animate); // Loop the animation
};

// Initialize snowflakes and start animation
createSnowflakes();
animate();

// Add event listener for the speed control slider
const speedControl = document.getElementById('speedControl');
speedControl.addEventListener('input', (event) => {
    speedFactor = event.target.value;
});
