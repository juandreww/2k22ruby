// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


function showPwd() {
    var x = document.getElementById("password");
    if (x.type == "password") {
        x.type = "text";
    } else {
        x.type = "password"
    }
}
