// Snowfall animation — only runs if #snowfallCanvas exists on the page
(function () {
    'use strict';

    const canvas = document.getElementById('snowfallCanvas');
    if (!canvas) return; // Exit silently if canvas is not on this page

    const ctx = canvas.getContext('2d');

    // Set canvas size
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    let snowflakes = [];
    let snowflakeCount = window.innerWidth > 1200 ? 150 : 50;
    let snowPile = Array(canvas.width).fill(0);
    let speedFactor = 0.3;

    window.addEventListener('resize', () => {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        snowPile = Array(canvas.width).fill(0);
    });

    const randomColor = () => {
        const colors = ['#17b6e5', '#79c072', '#cce7ff'];
        return colors[Math.floor(Math.random() * colors.length)];
    };

    const createSnowflakes = () => {
        for (let i = 0; i < snowflakeCount; i++) {
            snowflakes.push({
                x: Math.random() * canvas.width,
                y: Math.random() * canvas.height,
                size: Math.random() * 6 + 4,
                speed: Math.random() * 0.5 + 1,
                color: randomColor(),
                drift: Math.random() * 1 - 0.5,
            });
        }
    };

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

    const updateSnowflakes = () => {
        for (const snowflake of snowflakes) {
            snowflake.y += snowflake.speed * speedFactor;
            if (snowflake.y + snowflake.size >= canvas.height - snowPile[Math.floor(snowflake.x)]) {
                snowflake.speed += 0.1;
                snowflake.speed = Math.min(snowflake.speed, 8);
                if (Math.floor(snowflake.x) >= 0 && Math.floor(snowflake.x) < canvas.width) {
                    snowPile[Math.floor(snowflake.x)] += snowflake.size;
                }
                snowflake.y = -snowflake.size;
                snowflake.x = Math.random() * canvas.width;
            }
            snowflake.x += snowflake.drift;
            if (snowflake.x < 0) snowflake.x = canvas.width;
            if (snowflake.x > canvas.width) snowflake.x = 0;
        }
    };

    const drawSnowflakesScene = () => {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        for (const snowflake of snowflakes) {
            drawSnowflake(snowflake.x, snowflake.y, snowflake.size, snowflake.color);
        }
        ctx.fillStyle = '#ffffff';
        for (let i = 0; i < canvas.width; i++) {
            if (snowPile[i] > 0) {
                ctx.fillRect(i, canvas.height - snowPile[i], 1, snowPile[i]);
            }
        }
    };

    const animate = () => {
        drawSnowflakesScene();
        updateSnowflakes();
        requestAnimationFrame(animate);
    };

    createSnowflakes();
    animate();

    // Speed control slider (optional, only if element exists)
    const speedControl = document.getElementById('speedControl');
    if (speedControl) {
        speedControl.addEventListener('input', (event) => {
            speedFactor = event.target.value;
        });
    }
})();
