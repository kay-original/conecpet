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

dogRadio.addEventListener('click', dog);
function dog() {
  catBreed.style.display = "none";
  dogBreed.style.display = "block";
  catBreedSelect.disabled = true;
  dogBreedSelect.disabled = false;
  parentCat.style.display = "none";
  parentDog.style.display = "block";
  motherCatBreed.disabled = true;
  fatherCatBreed.disabled = true;
  motherDogBreed.disabled = false;
  fatherDogBreed.disabled = false;
  parentCatName.style.display = "none";
  parentDogName.style.display = "block";
  motherCatName.disabled = true;
  fatherCatName.disabled = true;
  motherDogName.disabled = false;
  fatherDogName.disabled = false;
}
catRadio.addEventListener('click', cat);
function cat() {
  dogBreed.style.display = "none";
  catBreed.style.display = "block";
  dogBreedSelect.disabled = true;
  catBreedSelect.disabled = false;
  parentDog.style.display = "none";
  parentCat.style.display = "block";
  motherDogBreed.disabled = true;
  fatherDogBreed.disabled = true;
  motherCatBreed.disabled = false;
  fatherCatBreed.disabled = false;
  parentDogName.style.display = "none";
  parentCatName.style.display = "block";
  motherDogName.disabled = true;
  fatherDogName.disabled = true;
  motherCatName.disabled = false;
  fatherCatName.disabled = false;
}