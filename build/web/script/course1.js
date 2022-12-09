const lessoncard = document.getElementsByClassName(".lesson-card")
const showContainer=document.querySelector(".show-container");
const lessonList = document.getElementsByClassName(".preview-lesson");
const lesson = document.querySelector(".card-lessons-list");
function activeOn(){
    lesson.classList.toggle("active");        
}

showContainer.foreach(activeOn);

// const showVideo=document.querySelectorAll('.show-video')
// showVideo.forEach((btn)=>
//     btn.addEventListener("click",(e)=>{
//         function showIT(){
//             document.querySelector(".card-lesson-list").classList.toggle("active");
//         }        
//     }
//     )
// )



// showContainer.addEventListener("click",(e) =>{
//     lesson.classList.toggle("active");
// })

// const showVideo=document.querySelectorAll('.show-video')
// showVideo.forEach((btn)=>
//     btn.addEventListener("click",(e)=>{
//         let parentContainer=e.target.closest(".card-lesson-list")
//         let _id=parentContainer.id
//         if(_id){
//             // let childrenContainer=parentContainer.querySelectorAll(`.card-lesson-list`);
//            let childrenContainer = parentContainer.document.closest(".card-lesson-list") 
//             childrenContainer.forEach((child)=>
//                 child.classList.toggle("active")             
//             )
//         }
//     })   
// );