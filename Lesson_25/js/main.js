let category = []
let select = document.getElementById('select')
let container = document.getElementById("container")
items.map(item => {
    if (!category.includes(item.category)){
        category.push(item.category)
        let htmlCaterogy = `<option value= '${item.category}'>${item.category}`
        select.innerHTML += htmlCaterogy
}})

    function createItemHTML (item) {
    return `
    <div class="card" style="width: 18rem;">
        <img src="img/${item.imgUrl}" class="card-img-top" alt="...">
        <div class="card-body">
            <h2 class="card-title">${item.name}</h2>
                <h6>Colors: ${item.color.join(', ')}</h6>
                <h6>OS: ${item.os}</h6>
                <h6>InStock: ${item.orderInfo.inStock}</h6>
                <p>Price: ${item.price}</p>
                    <a href="#" class="btn btn-primary">Add to cart</a>
    </div>`
}



let max = document.getElementById("max")
let min = document.getElementById("min")
let filter = document.getElementById("filter")
let stockIn = document.getElementById("stockIn")
let result;
filter.onclick = () => {
    container.innerHTML = ''
    items.filter(item =>{
      if (select.value === '0') return true
      return item.category === select.value
    }).filter(item =>{
      if (!min.value) return true
      return item.price >= Number(min.value)
    }).filter(item =>{
      if (!max.value) return true
      return item.price <= Number(max.value)
    }).filter(item =>{
     return stockIn.checked ? item.orderInfo.inStock > 0 : stockIn
    }).filter(item =>{
    return stockOut.checked ? item.orderInfo.inStock === 0 : stockOut
    }).map(item => { 
    let html = createItemHTML(item);
    container.innerHTML += html
})}

min.onchange = () => {
    if (max.value){
    if (Number(min.value) >= Number(max.value)) {
      max.value = 0
    }}
    if (Number(min.value) <= 0) {
      min.value = Math.abs(min.value)
  }

}

max.onchange = () => {
  if (min.value){
  if (Number(min.value) >= Number(max.value)) {
    min.value = 0
  }}
  if (Number(max.value) <= 0) {
    max.value = Math.abs(max.value)
}

}

select.onchange = () => {
    container.innerHTML = ''
    items.filter(item =>{
        if (select.value === '0') return true
        return item.category === select.value
      }).filter(item =>{
        if (!min.value) return true
        return item.price >= Number(min.value)
      }).filter(item =>{
        if (!max.value) return true
        return item.price <= Number(max.value)
      }).map(item => {
        let html = createItemHTML(item);
        container.innerHTML += html
    })}

// чекбокс есть ли в наличии связанные фильтра если не введены не работают
// radiobuttoms считывали вверх вниз если если не указаны мин макс
