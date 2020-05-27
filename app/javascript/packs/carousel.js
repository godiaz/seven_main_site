let oneCounter = 0
let twoCounter = 0
let oneDontMove = false
let twoDontMove = false

const initCarousel = (one, two) => {
  if(oneCounter == one.children.length) {
   if(oneDontMove == false) {
     one.style.display = 'none'
   }
   two.style.display = "flex"
   one.style.left = '0'
   if(two.style.left == 0) {
     initialMovement(two)
   } else {
     if(twoCounter == two.children.length) {
       oneCounter = 0
       oneDontMove = false
       twoCounter = -1
       twoDontMove = false
       if(twoDontMove == false) {
         two.style.display = "none"
       }
       one.style.zIndex = 1
       two.style.left = '0'
     } else {
       movement(two)
       if(twoCounter == two.children.length - 3) {
         one.style.display = 'flex'
         one.style.zIndex = 0
         oneDontMove = true
       }
     }
   }
   twoCounter += 1
  } else {
   oneCounter += 1
   if(one.style.left == 0) {
     initialMovement(one)
   } else {
     movement(one)
     if(oneCounter == one.children.length - 3) {
       two.style.display = 'flex'
       two.style.zIndex = 0
       twoDontMove = true
     }
   }
  }
}

const initialMovement = (carousel) => {
  carousel.style.left = `-${window.getComputedStyle(carousel.firstElementChild, null).getPropertyValue("width").split('p')[0]}px`
}

const movement = (carousel) => {
  carousel.style.left = `${parseFloat(carousel.style.left.split('p')[0], 10) - window.getComputedStyle(carousel.firstElementChild, null).getPropertyValue("width").split('p')[0]}px`
}

export { initCarousel };
