# Failure-Alert

> Created a Failure Alert API and that can be imported to any of our API as part of the try catch error.


> Route (or end point)
- [x] The ask our tech team to get the web hook as it is for internal use only.

> Request Body
```json


{
  "firmAndCampaign": "{{firmAndCampaign}}",
  "name": "{{name}}",
  "email": "{{email}}",
  "phone": "{{phone}}",
  "message": "{{message}}"
}


```

> Suggested snippet to insert in the existing API at the try catch
```js


const axios = require('axios');

// This function sends a failure alert and handles errors.
async function sendFailureAlert(firmAndCampaign, name, email, phone) {
  try {
    // Perform an operation that may raise an error
    const result = await someOperation();

    // Continue with your code and return the result
    return result;
  } catch (error) {
    // Handle the error and convert it to a string message
    const error_message = error.toString();

    // Create an object with error details including input values
    const errorDetails = {
      firmAndCampaign,
      name,
      email,
      phone,
      message: error_message,
    };

    try {
      // Make an HTTP POST request to the notification endpoint
      const url = ${WEB_HOOK};
      const response = await axios.post(url, errorDetails);

      // Check the response status code and handle success or failure
      if (response.status === 200) {
        console.log('Failure alert sent successfully');
      } else {
        console.log(`Failed to send the failure alert. Status code: ${response.status}`);
      }
    } catch (requestError) {
      // Handle errors that occur while sending the failure alert
      console.error('Error sending the failure alert:', requestError);
    }

    // You can also re-throw the error if needed to propagate it further
    throw error;
  }
}

// Example usage:
const firmAndCampaign = 'YourFirmAndCampaignValue';
const name = 'YourNameValue';
const email = 'YourEmailValue';
const phone = 'YourPhoneValue';

sendFailureAlert(firmAndCampaign, name, email, phone)
  .then(result => {
    // Handle the result if needed
  })
  .catch(err => {
    // Handle any errors thrown by sendFailureAlert
  });





```