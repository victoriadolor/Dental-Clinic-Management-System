$(document).ready(function() {
  var stopLoadUID = false; // Define the flag outside the event handler to maintain state
  var totalAmount = 0; // Initialize totalAmount globally
  var discountedAmount = 0; // Variable to store discounted amount

  // Function to update total amount based on selected services
  function updateTotalAmount() {
    totalAmount = 0; // Reset totalAmount
    var services = [];

    $('#service').select2('data').forEach(function(service) {
      var priceString = $(service.element).data('price');
      priceString = priceString.toString();
      var priceNumber = parseFloat(priceString.replace(',', ''));

      services.push({
        name: service.text,
        price: priceNumber
      });
      totalAmount += priceNumber;
    });

    $('#totalAmount').val(totalAmount.toFixed(2));
    $('#totalAmountDisplay').text(`₱ ${totalAmount.toFixed(2)}`);
  }

  $('#service').on('change', function() {
    updateTotalAmount(); // Update total amount when service selection changes
  });

  $('#add-appointment-form').on('submit', function(e) {
    e.preventDefault();

    var doctor = $('#preferredDentist').select2('data')[0].text;
    var date = $('#preferredDate').select2('data')[0].text;
    var time = $('#preferredTime').select2('data')[0].text;

    var modalContent = `
      <table class="table table-bordered">
        <tr>
          <th>Doctor:</th>
          <td>${doctor}</td>
        </tr>
        <tr>
          <th>Date:</th>
          <td>${date}</td>
        </tr>
        <tr>
          <th>Time:</th>
          <td>${time}</td>
        </tr>
        <tr>
          <th>Services:</th>
          <td>
            <ul>
              ${$('#service').select2('data').map(function(service) {
                var priceString = $(service.element).data('price');
                priceString = priceString.toString();
                var priceNumber = parseFloat(priceString.replace(',', ''));
                return `<li>${service.text}  <span class="float-right">₱ ${priceNumber}</span></li>`;
              }).join('')}
            </ul>
          </td>
        </tr>
        <tr>
          <th>Total Amount:</th>
          <td><strong id="totalAmountDisplay" class="float-right">₱ ${totalAmount.toFixed(2)}</strong></td>
        </tr>
        <tr>
          <th>Privilege Card:</th>
          <td>
            <input type="checkbox" id="privilegeCard" name="privilegeCard"> Use Privilege Card
          </td>
        </tr>
      </table>
      <div id="discountMessage" class="text-right mt-2"></div>
      <div id="scannerMessage" class="scanner-message mt-3 text-center hidden">
        <div class="alert alert-info center">
          Please tap your card on the scanner
        </div>
      </div>
      <div id="validationMessage" class="hidden center">
        <div class="validation-spinner"></div>
        <p>Validating...</p>
      </div>
      <div id="successMessage" class="success-message mt-3 text-center hidden">
        <i class="fas fa-check-circle"></i>
        <span>Scan successful! Finalizing your total...</span>
      </div>
    `;

    $('#modal-body').html(modalContent);
    $('#AddAppointmentModal').modal('hide');
    $('#appointment-summary-modal').modal('show');

    $('#privilegeCard').on('change', function() {
      if ($(this).is(':checked')) {
        $('#scannerMessage').removeClass('hidden');
        stopLoadUID = false; // Reset the flag
        $('#confirm-btn').prop('disabled', true);

        setTimeout(function() {
          loadUID(); // Start the scanning process after delay
        }, 2000);
      } else {
          $('#scannerMessage').addClass('hidden');
          $('#discountMessage').html(''); // Clear discount message
          $('#confirm-btn').prop('disabled', false);

          // Revert the total amount to original (non-discounted)
          $('#totalAmountDisplay').text(`₱ ${totalAmount.toFixed(2)}`);
          stopLoadUID = true; // Stop scanning process when unchecked
      }
    });

    function loadUID() {
      if (stopLoadUID) return; // Stop execution if the flag is set

      $.ajax({
        url: "rfid_con.php",
        method: "GET",
        success: function(response) {
          if (response) { // Check if the response is not empty
            $("#getPriviligeCardId").val(response);
            $('#scannerMessage').addClass('hidden');
            $('#validationMessage').removeClass('hidden');

            // Hide validation message and show success message after 2 seconds
            setTimeout(function() {
              $('#validationMessage').addClass('hidden');
              $('#successMessage').removeClass('hidden').fadeIn(); // Show success message with fadeIn

              // Fade out the success message and then show discount message
              setTimeout(function() {
                $('#successMessage').fadeOut(function() {
                  // Calculate the discounted amount
                  discountedAmount = totalAmount * 0.90;

                  // Update the total amount display with discounted value
                  $('#totalAmountDisplay').text(`₱ ${discountedAmount.toFixed(2)}`);

                  // Show discount message
                  $('#discountMessage').html('<span class="small font-italic text-primary">A 10% discount has been applied.</span>');
                  $('#confirm-btn').prop('disabled', false);
                });
                stopLoadUID = true; // Set the flag to stop calling loadUID
              }, 2000); // 2000 milliseconds = 2 seconds
            }, 2000); // 2000 milliseconds = 2 seconds
          }
        },
        error: function(xhr, status, error) {
          console.log("Error: ", xhr.status, xhr.statusText);
        }
      });
    }
  });

  // Initialize total amount when the page loads
  updateTotalAmount();
});
