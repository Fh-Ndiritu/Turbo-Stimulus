// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// # manual turbo navigation
// console.log("I have visited", history.state)
// Turbo.visit('/old_schools/new')
// console.log("I have visited", history.state)

function togglePlayer(){
  document.querySelector('#loader').classList.toggle('hidden')
}

// Hijack turbo and listen for events
// document.addEventListener('turbo:before-visit', (event)=> {
//   console.log("showing loader")
//   togglePlayer()
// })


// document.addEventListener('turbo:before-render', (event) => {
//   event.preventDefault()
//   console.log("hidding loader")
//   setTimeout(() => {
//     togglePlayer()
//     event.detail.resume()
//   }, 3000);
// })

document.addEventListener('turbo:submit-start', ({event}) => {
  setTimeout(() => {
    console.log("They submitted", target)
    for ( const field of target.elements){
      field.disabled = true
    }}, 10000)


})