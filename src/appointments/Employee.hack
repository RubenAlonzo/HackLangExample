
//I used abstract class instead of interface because propeties are not supported by 
//interfaces 
abstract class Employee {

    protected string $Name;
    protected string $PaymentMethod;
    protected arraykey $EmployeeType;
    protected float $PricePerHour;
    protected int $HoursPerDay;
    

    public function Set_Name(string $name): void {
        $this->Name = $name;
    }
    public function Get_Name(): string {
        return $this->Name;
    }

    public function Set_PaymentMethod(string $method): void {
        $this->PaymentMethod = $method;
    }
    public function Get_PaymentMethod(): string {
        return $this->PaymentMethod;
    }

    public function Set_PricePerHour(float $price): void{
        $this->PricePerHour = $price;
    }
    public function Get_PricePerHour(): float{
        return $this->PricePerHour;
    }

    public function Get_HoursPerDay(): int{
        return $this->HoursPerDay;
    }

    public function Get_EmployeeType(): arraykey{
        return $this->EmployeeType;
    }
}
