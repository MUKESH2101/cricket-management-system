function loginUser() {
  const username = document.getElementById('login-username').value;
  const password = document.getElementById('login-password').value;

  // Dummy check
  if (username && password) {
    alert("Login Successful");
    window.location.href = 'bat-bowl.html';
  } else {
    alert("Login failed");
  }
  return false;
}

function signupUser() {
  const username = document.getElementById('signup-username').value;
  const password = document.getElementById('signup-password').value;

  if (username && password) {
    alert("Sign Up Successful");
    window.location.href = 'index.html';
  } else {
    alert("Please fill all fields");
  }
  return false;
}

function selectRole(role) {
  alert(`You selected to ${role}`);
  window.location.href = 'player-stats.html';
}

function saveStats() {
  alert("Stats Saved!");
  window.location.href = 'fitness.html';
  return false;
}

function checkFitness() {
  const weight = parseFloat(document.getElementById("weight").value);
  const height = parseFloat(document.getElementById("height").value);

  const bmi = weight / ((height / 100) ** 2);
  let energy = "";
  let stamina = "";
  let result = "";

  if (bmi < 18.5) {
    energy = "Low";
    stamina = "Poor";
    result = "You need to improve your fitness before playing.";
  } else if (bmi < 24.9) {
    energy = "High";
    stamina = "Excellent";
    result = "You're fit to play!";
  } else {
    energy = "Moderate";
    stamina = "Good";
    result = "You can play but keep an eye on your fitness.";
  }

  document.getElementById("fitnessResult").innerHTML = `
    <p><strong>BMI:</strong> ${bmi.toFixed(2)}</p>
    <p><strong>Energy Level:</strong> ${energy}</p>
    <p><strong>Stamina:</strong> ${stamina}</p>
    <p><strong>Result:</strong> ${result}</p>
  `;
  return false;
}
