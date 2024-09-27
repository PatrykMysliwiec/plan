function aktualnaGodzina() {
    var data = new Date();
    var godzina = data.getHours();
    var minuty = data.getMinutes();
    var sekundy = data.getSeconds();

    // Dodaj zero na początku jeśli godzina, minuty lub sekundy są mniejsze niż 10
    godzina = godzina < 10 ? '0' + godzina : godzina;
    minuty = minuty < 10 ? '0' + minuty : minuty;
    sekundy = sekundy < 10 ? '0' + sekundy : sekundy;

    var czas = godzina + ":" + minuty + ":" + sekundy;

    document.getElementById('godzina').textContent = czas;
}

// Wywołaj funkcję aktualnaGodzina od razu, a następnie co sekundę
aktualnaGodzina();
setInterval(aktualnaGodzina, 100);

// Godziny lekcji i przerw
const schedule = [
    { start: '08:00', end: '08:44', type: 'lekcji' },
    { start: '08:45', end: '08:50', type: 'przerwy' },
    { start: '08:50', end: '09:34', type: 'lekcji' },
    { start: '09:35', end: '09:40', type: 'przerwy' },
    { start: '09:40', end: '10:24', type: 'lekcji' },
    { start: '10:25', end: '10:40', type: 'przerwy' },
    { start: '10:40', end: '11:24', type: 'lekcji' },
    { start: '11:25', end: '11:30', type: 'przerwy' },
    { start: '11:30', end: '12:14', type: 'lekcji' },
    { start: '12:15', end: '12:20', type: 'przerwy' },
    { start: '12:20', end: '13:04', type: 'lekcji' },
    { start: '13:05', end: '13:10', type: 'przerwy' },
    { start: '13:10', end: '13:54', type: 'lekcji' },
    { start: '13:55', end: '14:00', type: 'przerwy' },
    { start: '14:00', end: '14:44', type: 'lekcji' },
    { start: '14:45', end: '14:50', type: 'przerwy' },
    { start: '14:50', end: '15:35', type: 'lekcji' },
];

// Funkcja konwertująca czas w formacie HH:MM na liczbę minut od północy
function timeToMinutes(time) {
    const [hours, minutes] = time.split(':').map(Number);
    return hours * 60 + minutes;
}

// Funkcja, która będzie odświeżać informacje o bieżącej lekcji/przerwie
function updateSchedule() {
    // Pobierz aktualną godzinę i minuty
    const now = new Date();
    const currentTime = `${String(now.getHours()).padStart(2, '0')}:${String(now.getMinutes()).padStart(2, '0')}`;
    const currentMinutes = timeToMinutes(currentTime);

    // Przejdź przez harmonogram i sprawdź, w której fazie jesteśmy
    for (let i = 0; i < schedule.length; i++) {
        const startMinutes = timeToMinutes(schedule[i].start);
        const endMinutes = timeToMinutes(schedule[i].end);
        
        if (currentMinutes >= startMinutes && currentMinutes <= endMinutes) {
            // Ustaw tekst w odpowiednim elemencie HTML
            document.getElementById('lekcjaPrzerwa').textContent = schedule[i].type;

            // Oblicz, ile czasu zostało do końca bieżącej lekcji/przerwy
            const remainingMinutes = endMinutes - currentMinutes;
            document.getElementById('zostalo').textContent = `${remainingMinutes} min.`;

            break;
        }
    }
}

// Ustaw cykliczne odświeżanie co 100 ms
setInterval(updateSchedule, 100);
