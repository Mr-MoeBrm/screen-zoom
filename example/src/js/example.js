import { screenZoom } from 'screen-zoom';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    screenZoom.echo({ value: inputValue })
}
