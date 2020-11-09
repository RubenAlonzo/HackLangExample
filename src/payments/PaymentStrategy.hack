
class PaymentStrategy {

    public function Get_Salary(Employee $employee, arraykey $condition): float {

        switch ($condition) {
            case PaymentConditions::Normal:
                $method = new RegularPayment($employee);
                break;
            case PaymentConditions::PartialQuarantine:
                $method = new PartialQuarantine($employee);
                break;
            case PaymentConditions::TotalQuarantine:
                $method = new TotalQuarantine($employee);
                break;
            default:
                return 0.0;
                break;
        }

         return $method->CalculatePayment();
    }
}
