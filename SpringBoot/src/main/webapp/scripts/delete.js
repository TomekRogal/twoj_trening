window.addEventListener("DOMContentLoaded", function() {
    let deleteLinks = document.querySelectorAll(".delete-link");
    deleteLinks.forEach(function(link) {
        link.addEventListener("click", function(e) {
            e.preventDefault();
            let confirmed = confirm("Czy na pewno chcesz usunąć tego autora?");

            if (confirmed) {
                window.location.href = this.href;
            }
        });
    });
});