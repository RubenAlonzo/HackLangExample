
class TotalQuarantine extends Payments {

    public function __construct(Employee $employee) {
        $this->e = $employee;
    }

    protected function NetSalaty(): float {

        return $this->DailySalary() * 7;
    }

    protected function CalculateDiscount(): float {

        $AFP = 0;
        $ARS = 0;
        return $this->NetSalaty() * ($AFP + $ARS) / 100;
    }
}
