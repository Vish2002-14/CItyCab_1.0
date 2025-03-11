document.getElementById('carForm').addEventListener('submit', async function (e) {
    e.preventDefault();

    const formData = new FormData(this);
    formData.append('action', 'add');

    try {
        const response = await fetch('car-management', {
            method: 'POST',
            body: formData,
        });

        if (response.ok) {
            alert('Car added successfully!');
            location.reload(); // Reload the page to see the updated data
        } else {
            alert('Failed to add car.');
        }
    } catch (error) {
        console.error('Error:', error);
    }
});

function editCar(id, carNumber, model, type, status) {
    document.getElementById('id').value = id;
    document.getElementById('carNumber').value = carNumber;
    document.getElementById('model').value = model;
    document.getElementById('type').value = type;
    document.getElementById('status').value = status;

    document.getElementById('action').value = 'update';
    document.getElementById('formTitle').innerText = 'Update Car';
    document.getElementById('submitButton').innerText = 'Update Car';
}

document.getElementById('carForm').addEventListener('reset', function () {
    document.getElementById('id').value = '';
    document.getElementById('action').value = 'add';
    document.getElementById('formTitle').innerText = 'Add New Car';
    document.getElementById('submitButton').innerText = 'Add Car';
});
