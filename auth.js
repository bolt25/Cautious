auth.onAuthStateChanged(user => {
    console.log(user);
})

const signupform = document.querySelector("#signup-form");
signupform.addEventListener('submit', (e) => {
    e.preventDefault();
    let email = signupform['signup-email'].value;
    let password = signupform['signup-password'].value;

    // signup the user
    auth.createUserWithEmailAndPassword(email, password).then(cred => {
        console.log(cred.user);
        location.href = 'main.php';
    })
    .catch((error) => {
        let errorCode = error.code;
        let errorMssg = error.message;
        if (errorCode == 'auth/weak-password') {
            alert('The password is too weak.');
            signupform['signup-password'].focus();
        } else {
            alert(errorMssg);
            signupform['signup-email'].focus();
        }
    })
})
