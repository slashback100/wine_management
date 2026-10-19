// Wine Cellar Manager - Frontend JavaScript
// Utilities partagées par les pages (thème, navigation, formatage).

function formatDate(dateStr) {
    if (!dateStr) return '-';
    const date = new Date(dateStr);
    return date.toLocaleDateString('fr-FR');
}

function formatNumber(num) {
    if (num === null || num === undefined) return '-';
    return num.toLocaleString('fr-FR');
}

function currentTheme() {
    return document.documentElement.getAttribute('data-theme') === 'light' ? 'light' : 'dark';
}

function setTheme(theme) {
    document.documentElement.setAttribute('data-theme', theme);
    try { localStorage.setItem('wine-theme', theme); } catch (e) { /* ignore */ }
}

function initThemeToggle() {
    const btn = document.getElementById('theme-toggle');
    if (!btn) return;
    btn.setAttribute('aria-pressed', String(currentTheme() === 'light'));
    btn.addEventListener('click', function () {
        const next = currentTheme() === 'light' ? 'dark' : 'light';
        setTheme(next);
        btn.setAttribute('aria-pressed', String(next === 'light'));
    });
}

function initActiveNav() {
    const path = window.location.pathname.replace(/\/$/, '');
    const pageForPath = {
        '/wine': 'wines',
        '/wine/stats': 'stats',
        '/wine/millesime': 'millesime'
    }[path];
    document.querySelectorAll('.nav-item[data-page]').forEach(function (item) {
        if (item.getAttribute('data-page') === pageForPath) {
            item.classList.add('active');
            item.setAttribute('aria-current', 'page');
        }
    });
}

document.addEventListener('DOMContentLoaded', function () {
    initThemeToggle();
    initActiveNav();
});
