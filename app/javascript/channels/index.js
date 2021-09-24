// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
window.onload = () =>{

    document.querySelector('.signup__btn').addEventListener('click', ()=>{
        document.querySelector('.modal__signup').classList.add('modal__signup-active')
        document.querySelector('.modal__back').classList.add('modal__back-active')

    })
    document.querySelector('.close__btn').addEventListener('click',()=>{
        document.querySelector('.modal__signup').classList.remove('modal__signup-active')
        document.querySelector('.modal__back').classList.remove('modal__back-active')
    })
    document.querySelector('.login__btn').addEventListener('click', ()=>{
        document.querySelector('.modal__login').classList.add('modal__login-active')
        document.querySelector('.modal__back').classList.add('modal__back-active')

    })
    document.querySelector('.close__btn2').addEventListener('click',()=>{
        document.querySelector('.modal__login').classList.remove('modal__login-active')
        document.querySelector('.modal__back').classList.remove('modal__back-active')
    })
}
