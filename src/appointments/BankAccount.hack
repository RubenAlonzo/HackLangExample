

abstract class BankAccount extends Employee {

    protected string $AccountNumber;

    public function Set_AccountNumber(string $account): void {
        $this->AccountNumber = $account;
    }
    public function Get_AccountNumber(): string {
        return $this->AccountNumber;
    }

    protected static function GenerateAccountNumber(): string {

        $account = 
            (string)rand(1000, 9999).
            "-".
            (string)rand(1000, 9999).
            "-".
            (string)rand(1000, 9999).
            "-".
            (string)rand(1000, 9999);

        return $account;
    }

}
