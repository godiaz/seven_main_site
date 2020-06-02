function updateLcar() {
  let height = window.innerHeight;
  let width = window.innerWidth;
  let lcar = document.getElementById('lcar')
  let sm_count = lcar.dataset.sm
  let md_count = lcar.dataset.md
  let lg_count = lcar.dataset.lg
  let xl_count = lcar.dataset.xl

  if (width > 1200) {
    document.querySelectorAll('.element').forEach((element) => {
      element.style.minWidth = `${(1 / parseInt(xl_count, 10)) * 100}%`
    })
  } else if (width > 992 ) {
    document.querySelectorAll('.element').forEach((element) => {
      element.style.minWidth = `${(1 / parseInt(lg_count, 10)) * 100}%`
    })
  } else if (width > 768 ) {
    document.querySelectorAll('.element').forEach((element) => {
      element.style.minWidth = `${(1 / parseInt(md_count, 10)) * 100}%`
    })
  } else {
    document.querySelectorAll('.element').forEach((element) => {
      element.style.minWidth = `${(1 / parseInt(sm_count, 10)) * 100}%`
    })
  }
}

const scrollio = () => {
  let count = 0
  setInterval(
    function() {
      document.getElementById('lcar').scroll({
        left: document.getElementById('lcar').scrollLeft + document.querySelector('.element').offsetWidth,
        behavior: 'smooth'
      });
      let itm = document.getElementById("lcar").children[count];
      let cln = itm.cloneNode(true);

      document.getElementById("lcar").appendChild(cln);
      // document.getElementById('lcar').appendChild(document.getElementById('lcar').children[0])
      count += 1
    }
  , document.getElementById('lcar').dataset.scroll);
}

export { scrollio, updateLcar}

