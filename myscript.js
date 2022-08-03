let themeBtn = document.querySelector('#theme-btn');
let formBtn = document.querySelector('#register-btn');
let registerform = document.querySelector('.register-form-container');
let formclose = document.querySelector('#form-close');

themeBtn.onclick = () =>{
    themeBtn.classList.toggle('fa-sun');

    if(themeBtn.classList.contains('fa-sun')){
        document.body.classList.add('active');
    }else{
        document.body.classList.remove('active');
    }

};

formBtn.addEventListener('click', () =>{
    registerform.classList.add('active');
});

formclose.addEventListener('click', () =>{
    registerform.classList.remove('active');
});