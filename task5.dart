void main() {
  BankAccount account = BankAccount();
  print('current balance : \$${account.getBalance()}');

  try {
    account.deposit(100); 
    print('Balance after deposit: \$${account.getBalance()}');

    account.withdraw(50); 
    print('Balance after withdrawal: \$${account.getBalance()}');

    account.withdraw(80); 
    print(
        'Balance after withdrawal: \$${account.getBalance()}'); 
  } catch (e) {
    print('Error: $e');
  }
}

class OverdraftException implements Exception {
  String errorMessage='Withdrawal amount exceeds available balance.';
}

class BankAccount {
  double balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw OverdraftException().errorMessage;
    } else {
      balance -= amount;
    }
  }

  double getBalance() {
    return balance;
  }
}
