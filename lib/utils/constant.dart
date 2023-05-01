//Domain and Urls Info
const kDomain = 'https://nnclud.sheikhit.net';
const baseUrl = '$kDomain/api';
//Auth api
const kLoginUrl = '$baseUrl/login';
const kRegister = '$baseUrl/register';

// Endpoint for submitting a payment form for a user
String kFormSubmit(int id) => '$baseUrl/user/$id/formsubmit';

// Endpoint for getting all payment forms submitted by a user
String kUserForms(int id) => '$baseUrl/user/$id/forms';

// Endpoint for getting all users with a specific referral code
String kUsersByReferredCode(String referredCode) =>
    '$baseUrl/users/$referredCode';
