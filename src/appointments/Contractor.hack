
class Contractor extends Employee {

    private function __construct(string $name) {
        $this->Name = $name;
        $this->PricePerHour = (float) 0;
        $this->PaymentMethod = "";
    }

    //As we can't initialize the obj here, we need to make it nullable
    private static ? Contractor $singleton;

    public static function GetContractor(string $name): ?Employee {

        if (self::$singleton == null) {
            self::$singleton = new Contractor($name);
        }
        return Contractor::$singleton;
    }
}
