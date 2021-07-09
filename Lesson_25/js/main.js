let category = []
let select = document.getElementById('select')
let container = document.getElementById("container")
items.map(item => {
    if (!category.includes(item.category)){
        category.push(item.category)
        let htmlCaterogy = `<option value= '${item.category}'>${item.category}`
        select.innerHTML += htmlCaterogy
    }
let html = `
    <div class="card" style="width: 18rem;">
        <img src="img/${item.imgUrl}" class="card-img-top" alt="...">
        <div class="card-body">
            <h2 class="card-title">${item.name}</h2>
                <h6>Colors: ${item.color.join(', ')}</h6>
                <h6>OS: ${item.os}</h6>
                <p>Price: ${item.price}</p>
                    <a href="#" class="btn btn-primary">Add to cart</a>
    </div>` 
container.innerHTML += html
})

let max = document.getElementById("max")
let min = document.getElementById("min")
let filter = document.getElementById("filter")
filter.onclick = () => {
    container.innerHTML = ''
    items.filter(item =>{
      if (!select.value) return true
      return item.category === select.value
    }).filter(item =>{
      if (!min.value) return true
      return item.price >= Number(min.value)
    }).filter(item =>{
      if (!max.value) return true
      return item.price <= Number(max.value)
    }).map(item => {
    let html = `
    <div class="card" style="width: 18rem;">
        <img src="img/${item.imgUrl}" class="card-img-top" alt="...">
        <div class="card-body">
            <h2 class="card-title">${item.name}</h2>
                <h6>Colors: ${item.color.join(', ')}</h6>
                <h6>OS: ${item.os}</h6>
                <p>Price: ${item.price}</p>
                    <a href="#" class="btn btn-primary">Add to cart</a>
    </div>` 
    container.innerHTML += html
})}

min.onchange = () => {
    if (Number(min.value) > max.value) {
        max.value = Number(min.value) + 1
    }

}

max.onchange = () => {
    if (Number(min.value) >= max.value) {
        min.value = Number(max.value) - 1
    }

}

select.onchange = () => {
    container.innerHTML = ''
    items.filter(item => item.category === select.value).map(item => {
        let html = `
        <div class="card" style="width: 18rem;">
        <img src="img/${item.imgUrl}" class="card-img-top" alt="...">
        <div class="card-body">
            <h2 class="card-title">${item.name}</h2>
                <h6>Colors: ${item.color.join(', ')}</h6>
                <h6>OS: ${item.os}</h6>
                <p>Price: ${item.price}</p>
                    <a href="#" class="btn btn-primary">Add to cart</a>
        </div>` 
        container.innerHTML += html
    })}

// чекбокс есть ли в наличии связанные фильтра если не введены не работают
// radiobuttoms считывали вверх вниз если если не указаны мин макс
