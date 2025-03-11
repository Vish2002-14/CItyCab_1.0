function editDriver(id, name, address, licenseNumber, phoneNumber, carId) {
    document.getElementById('id').value = id;
    document.getElementById('name').value = name;
    document.getElementById('address').value = address;
    document.getElementById('licenseNumber').value = licenseNumber;
    document.getElementById('phoneNumber').value = phoneNumber;
    document.getElementById('carId').value = carId;

    document.getElementById('action').value = 'update';
    document.getElementById('formTitle').innerText = 'Update Driver';
    document.getElementById('submitButton').innerText = 'Update Driver';
}

document.getElementById('driverForm').addEventListener('reset', function() {
    document.getElementById('id').value = '';
    document.getElementById('action').value = 'add';
    document.getElementById('formTitle').innerText = 'Add New Driver';
    document.getElementById('submitButton').innerText = 'Add Driver';
});