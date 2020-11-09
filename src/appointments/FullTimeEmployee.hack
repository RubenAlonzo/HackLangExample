
class FullTimeEmployee extends BankAccount{

    public function __construct(string $name, float $pricePerHour){
        $this->Name = $name;
        $this->PricePerHour = $pricePerHour;
        $this->HoursPerDay = 8;
        $this->EmployeeType = EmployeeTypes::FullTime;
        $this->PaymentMethod = "Bank Account";
        $this->AccountNumber = self::GenerateAccountNumber();
    }  
}