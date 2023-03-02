void main() {
  var isLoggedIn = true;
  var userName = 'Maximilian';
  var password = 'testers';
  var hasCorrectCredentials = userName == 'Max' && password == 'tester';
  var age = 30;
  if (userName == 'Max' && (password == 'tester' || age > 20)) {
    print('Logged in!');
  } else if (isLoggedIn) {
    print('Overruled!');
  } else {
    print('Failed!');
  }
}
