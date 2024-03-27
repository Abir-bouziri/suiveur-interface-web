function etat() {
    var etat = document.getElementById('res');
    if (etat.textContent=='Approved') {
        etat.textContent = 'Disqualified';
        etat.style.animationName = 'burn';
    }
    else{
        etat.textContent = 'Approved';
        etat.style.animationName = 'burn1';
    }
    
    
  }