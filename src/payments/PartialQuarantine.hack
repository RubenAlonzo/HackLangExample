
class PartialQuarantine extends Payments{
    
        public function __construct(Employee $employee){
        $this->e = $employee;
    }
   
    protected function NetSalaty(): float{

        return $this->DailySalary() * 15;
    }

    protected function CalculateDiscount(): float{

        $AFP = 0;
        $ARS = 3.04; 
        return $this->NetSalaty() * ($AFP + $ARS) / 100;
    }
}