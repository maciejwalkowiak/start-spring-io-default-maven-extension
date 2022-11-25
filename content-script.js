const readyStateCheckInterval = setInterval(function () {
    if (document.readyState === "complete") {
        clearInterval(readyStateCheckInterval);

        const radioButtons = Array.from(document.querySelectorAll("span.radio-content")).filter(r => r.innerHTML === "Maven");

        // "Maven Project" radio button exists
        if (radioButtons.length === 1) {
            console.log("Selecting 'Maven Project'");
            radioButtons[0].click();
        }
    }
}, 10);
