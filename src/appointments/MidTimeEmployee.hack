
class MidTimeEmployee extends BankAccount{
    
    public function __construct(string $name){
        $this->Name = $name;
        $this->PricePerHour = (float) 0;
        $this->PaymentMethod = "";
        $this->AccountNumber = self::GenerateAccountNumber();
    }
}