
class EmployeeGenerator {

  public static function CreateEmployee(arraykey $type, string $name, float $pricePerHour): Employee {
    
    if ($type == EmployeeTypes::FullTime) {
        return new FullTimeEmployee($name, $pricePerHour);
    } else if ($type == EmployeeTypes::MidTime) {
        return new MidTimeEmployee($name, $pricePerHour);
    } else {
        return new Contractor($name, $pricePerHour);
    } 
  }
}

//It is the best option for switching between employee types
    //Have to fix the Fatal error: Uncaught Error: Class undefined: EmployeeTypes 
    //before using it
    /*switch ($type) {
        case EmployeeTypes::FullTime:
             return new FullTimeEmployee($name, $pricePerHour);
            break;
        case EmployeeTypes::MidTime:
              return new MidTimeEmployee($name, $pricePerHour);
            break;
        case EmployeeTypes::Contractor:
              return new Contractor($name, $pricePerHour);
            break;
    }*/