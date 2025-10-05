const date=new Date(); 
const months = ['January' ,'Feburary','March','April','May', 'June',' July','August','September','October','November','December']; const days=['Sunday','Monday','Wednesday',' Thursday',' Friday',' Saturday'];
document.getElementById('month').innerHTML = `${months[date.getMonth()]},${date.getFullYear()}`;
var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
for (let i = 0; i < firstDay.getDay(); i++) {
    const span = document.createElement('span');
    document.getElementById('dates').appendChild(span);
}
for (let i = 1; i <= lastDay.getDate(); i++) {
    const span = document.createElement('span');
    span.innerHTML = i;
    document.getElementById('dates').appendChild(span);
    if (i == date.getDate()) {
        span.style.color = 'Red';
    }
} 