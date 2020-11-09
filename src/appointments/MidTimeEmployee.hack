
class MidTimeEmployee extends BankAccount{
    
    public function __construct(string $name, float $pricePerHour){
        $this->Name = $name;
        $this->PricePerHour = $pricePerHour;
        $this->EmployeeType = EmployeeTypes::MidTime;
        $this->HoursPerDay = 4;
        $this->PaymentMethod = "Bank Account";
        $this->AccountNumber = self::GenerateAccountNumber();
    }
}