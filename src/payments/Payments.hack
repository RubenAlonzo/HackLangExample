
abstract class Payments {

    protected  Employee $e;

    public function CalculatePayment(): float {

        return $this->NetSalaty() - $this->CalculateDiscount();
    }

    protected function DailySalary(): float {

        return $this->e->Get_PricePerHour() * $this->e->Get_HoursPerDay();
    }

    protected abstract function CalculateDiscount(): float;

    protected abstract function NetSalaty(): float;

}
