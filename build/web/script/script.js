function  toggleFrom(){
    container=document.querySelector(".container");
    container.classList.toggle("active");
    main=document.querySelector(".login__registered");
    main.classList.toggle("active");
}

function check(){
    const arr = document.getElementsByTagName("input");
    var name1=arr[0].value;
    var passWord=arr[1].value;
    if( name1== "" || passWord == "" ){
        alert("PLEASE FILL FULLY INFOMATION.");
    }
    else{
        confirm("WELCOME " + name1);
    } 
}
function check1(){
    const arr = document.getElementsByTagName("input");
    var name2=arr[3].value;
    var email= arr[4].value;
    var createPass=arr[5].value;
    var confirmPass=arr[6].value;
    if( name2== "" || email == "" || createPass == "" || confirmPass=="" ){
        alert("PLEASE FILL FULLY INFOMATION.");
        return;
    }else if(createPass != confirmPass){
        alert("INCORRECT PASSWORD. PLEASE TRY AGAIN!");
        return;
    }
    else{
        confirm("Welcome " + name2);
    }
}

var bonus = [
    'Cường hóa vật phẩm đỏ',
    'Cường hóa vật phẩm vàng',
    'Cường hóa vật phẩm tím',
    'Cường hóa vật phẩm xanh',
    'Cường hóa vật phẩm lục',
];
var random = Math.floor(Math.random()*100);
if (random < 5){
    console.log(bonus[0])
    
}
else if (random < 10){
    console.log(bonus[1])
   
}
else if (random < 20){
    console.log(bonus[2])
   
}
else if (random < 50){
    console.log(bonus[3])
    
}
else if (random < 100){
    console.log(bonus[4])
    
}
console.log(random);
console.log(random);