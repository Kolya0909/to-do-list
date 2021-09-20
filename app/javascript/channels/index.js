// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
window.onload = () =>{
    const signup = document.querySelector('.signup__btn')

    signup.addEventListener('click', ()=>{
        document.querySelector('.modal__signup').classList.toggle('modal__signup-active')
    })
}
