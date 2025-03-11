function editCarType(id, name, chargePerKm, taxes, discount) {
    document.getElementById('id').value = id;
    document.getElementById('name').value = name;
    document.getElementById('chargePerKm').value = chargePerKm;
    document.getElementById('taxes').value = taxes;
    document.getElementById('discount').value = discount;

    document.getElementById('action').value = 'update';
    document.getElementById('formTitle').innerText = 'Update Car Type';
    document.getElementById('submitButton').innerText = 'Update Car Type';
}

document.getElementById('carTypeForm').addEventListener('reset', function() {
    document.getElementById('id').value = '';
    document.getElementById('action').value = 'add';
    document.getElementById('formTitle').innerText = 'Add New Car Type';
    document.getElementById('submitButton').innerText = 'Add Car Type';
});