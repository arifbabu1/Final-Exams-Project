// Manage CRUD operations for a student list
let selectedRow = null;

// Function to show alert messages
function showAlert(message, className) {
  const alertDiv = document.createElement("div");
  alertDiv.className = `alert alert-${className}`;
  alertDiv.appendChild(document.createTextNode(message));
  const container = document.querySelector(".container");
  const form = document.querySelector("#student-form");
  container.insertBefore(alertDiv, form);

  // Remove alert after 3 seconds
  setTimeout(() => alertDiv.remove(), 3000);
}

// Function to clear input fields
function clearFields() {
  document.querySelector("#firstName").value = "";
  document.querySelector("#lastName").value = "";
  document.querySelector("#rollNo").value = "";
}

// Add or edit student data
document.querySelector("#student-form").addEventListener("submit", (e) => {
  e.preventDefault();

  // Get form values
  const firstName = document.querySelector("#firstName").value.trim();
  const lastName = document.querySelector("#lastName").value.trim();
  const rollNo = document.querySelector("#rollNo").value.trim();

  // Validate input fields
  if (firstName === "" || lastName === "" || rollNo === "") {
    showAlert("Please fill in all fields", "danger");
    return;
  }

  if (selectedRow === null) {
    // Add new student to the list
    const studentList = document.querySelector("#student-list");
    const newRow = document.createElement("tr");
    newRow.innerHTML = `
      <td>${firstName}</td>
      <td>${lastName}</td>
      <td>${rollNo}</td>
      <td>
        <button class="btn btn-warning btn-sm edit">Edit</button>
        <button class="btn btn-danger btn-sm delete">Delete</button>
      </td>
    `;
    studentList.appendChild(newRow);
    showAlert("Student added successfully", "success");
  } else {
    // Edit existing student details
    selectedRow.children[0].textContent = firstName;
    selectedRow.children[1].textContent = lastName;
    selectedRow.children[2].textContent = rollNo;
    showAlert("Student details updated", "info");
    selectedRow = null;
  }

  clearFields();
});

// Handle edit and delete actions
document.querySelector("#student-list").addEventListener("click", (e) => {
  if (e.target.classList.contains("edit")) {
    selectedRow = e.target.parentElement.parentElement;
    document.querySelector("#firstName").value = selectedRow.children[0].textContent;
    document.querySelector("#lastName").value = selectedRow.children[1].textContent;
    document.querySelector("#rollNo").value = selectedRow.children[2].textContent;
  } else if (e.target.classList.contains("delete")) {
    e.target.parentElement.parentElement.remove();
    showAlert("Student removed", "danger");
  }
});
