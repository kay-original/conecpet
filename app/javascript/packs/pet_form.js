var dogRadio = document.getElementById("dog");
var catRadio = document.getElementById("cat");

var dogBreed = document.getElementById("dog_breed_form");
var catBreed = document.getElementById("cat_breed_form");

var dogBreedSelect = document.getElementById("dog_breed");
var catBreedSelect = document.getElementById("cat_breed");

var parentDog = document.getElementById("parents_dog_breed");
var parentCat = document.getElementById("parents_cat_breed");

var parentDogName = document.getElementById("dog_parents_name");
var parentCatName = document.getElementById("cat_parents_name");

var motherDogBreed = document.getElementById("mother_dog_breed")
var fatherDogBreed = document.getElementById("father_dog_breed")

var motherCatBreed = document.getElementById("mother_cat_breed")
var fatherCatBreed = document.getElementById("father_cat_breed")

var motherDogName = document.getElementById("mother_dog_name")
var fatherDogName = document.getElementById("father_dog_name")

var motherCatName = document.getElementById("mother_cat_name")
var fatherCatName = document.getElementById("father_cat_name")

dogRadio.addEventListener("click", dispDogBreed);
function dispDogBreed() {
  dogBreed.style.display = "block";
  parentCat.style.display = "none"
  motherCatName.disabled = true;
  fatherCatName.disabled = true;
  motherDogName.disabled = false;
  fatherDogName.disabled = false;
  if (dogBreed.style.display = "block"){
    catBreed.style.display = "none";
    catBreedSelect.disabled = true;
    parentDogName.style.display = "block";
    parentCatName.style.display = "none";
    dogBreedSelect.disabled = false;
  }
  else {
    dogBreedSelect.disabled = false;
  }
}

catRadio.addEventListener("click", dispCatBreed);
function dispCatBreed() {
  catBreed.style.display = "block";
  motherDogName.disabled = true;
  fatherDogName.disabled = true;
  motherCatName.disabled = false
  fatherCatName.disabled = false
  if (catBreed.style.display = "block"){
    dogBreed.style.display = "none";
    dogBreedSelect.disabled = true;
    parentDogName.style.display = "none";
    parentCatName.style.display = "block";
    catBreedSelect.disabled = false;
    parentDog.style.display = "none";
  }
  else {
    catBreedSelect.disabled = false;
  }
};