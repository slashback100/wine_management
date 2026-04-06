// Wine Cellar Manager - Frontend JavaScript
// Main logic is inline in templates for simplicity
// This file can be used for shared utilities

function formatDate(dateStr) {
    if (!dateStr) return '-';
    const date = new Date(dateStr);
    return date.toLocaleDateString('fr-FR');
}

function formatNumber(num) {
    if (num === null || num === undefined) return '-';
    return num.toLocaleString('fr-FR');
}
