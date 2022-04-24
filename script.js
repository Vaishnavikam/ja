var row=1;
var entry = document.getElementById("entry");
entry.addEventListener("click",displaydetails);
function displaydetails() {
    var name = document.getElementById("name").Value;
    var phonenumber = document.getElementById("phonenumber").Value;
    if(!name || !phonenumber) {
        alert("please fill all the boxes");
        return;
    }
  var display = document.getElementById("display");

var newRow = display.insertRow(row);
var cell1 = newRow.insertCell(0);
var cell2 = newRow.insertCell(1);

cell1.innerHTML = name;
cell2.innerHTML = phonenumber;
row++;
}