

class Contractor extends Employee {

    public function __construct(string $name, float $pricePerHour) {
        $this->Name = $name;
        $this->PricePerHour = $pricePerHour;
        $this->EmployeeType = EmployeeTypes::Contractor;
        $this->HoursPerDay = 9;
        $this->PaymentMethod = "Pay Check";
    }

}

/***
----- This was the singleton implemented, 
I have to fix the return type, it shouldn't be nullable

class Contractor extends Employee {

    private function __construct(string $name) {
        $this->Name = $name;
        $this->PricePerHour = (float) 0;
        $this->EmployeeType = EmployeeTypes::Contractor;
        $this->HoursPerDay = 9;
        $this->PaymentMethod = "";
    }

    //As we can't initialize the obj here, we need to make it nullable
   private static ? Contractor $singleton;

    public static function GetContractor(string $name): ? Employee {

        if (self::$singleton == null) {
            self::$singleton = new Contractor($name);
        }

        return Contractor::$singleton;
    }
}




***/


