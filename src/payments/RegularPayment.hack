
class RegularPayment extends Payments{
    
    public function __construct(Employee $employee){
        $this->e = $employee;
    }
   
    protected function NetSalaty(): float{

        return $this->DailySalary() * 30;
    }

    protected function CalculateDiscount(): float{

        $AFP = 2.87;
        $ARS = 3.04; 
        return $this->NetSalaty() * ($AFP + $ARS) / 100;
    }
}