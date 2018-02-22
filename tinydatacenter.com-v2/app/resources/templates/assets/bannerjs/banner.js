//doBanner();


function doBanner () {
  if (window.sessionStorage) {
    var s = window.sessionStorage;

    if (s.getItem("banner-cleared") != "true") {
      installBanner();
    }
  } else {
    installBanner();
  }
}



function installBanner () {
  var banner = document.createElement("div");

  banner.setAttribute("id", "banner");
  banner.setAttribute("style", "background-color: yellow; font-weight: bold; color: black; width: 100%; height: 30px; text-align: center");

  banner.textContent = "Stay tuned for updates..."

  document.body.insertBefore(banner, document.body.firstChild);

  banner.addEventListener("click", function () {
    document.body.removeChild(banner);
    banner = null;

    if (window.sessionStorage) {
      var s = window.sessionStorage;
      s.setItem("banner-cleared", "true");
    }
  });
}
