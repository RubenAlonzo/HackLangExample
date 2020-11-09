
class EmployeeGenerator {

  public static function CreateEmployee(arraykey $type, string $name, float $pricePerHour): Employee {
    
    if ($type == EmployeeTypes::FullTime) {
        return new FullTimeEmployee($name, $pricePerHour);
    } else if ($type == EmployeeTypes::MidTime) {
        return new MidTimeEmployee($name, $pricePerHour);
    } else {
        return new Contractor($name, $pricePerHour);
    }

   /* if ($type == EmployeeTypes::FullTime) {
        return new FullTimeEmployee($name, $pricePerHour);
    } 
    if ($type == EmployeeTypes::MidTime) {
        return new MidTimeEmployee($name, $pricePerHour);
    }
    if($type == EmployeeTypes::Contractor){
        return new Contractor($name, $pricePerHour);
    }*/

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
            break;*/
    }

  }
}


///This was the way I tried at the beggining

    /*switch ($type) {
        case EmployeeTypes::FullTime:
             return new FullTimeEmployee($name);
            break;
        case EmployeeTypes::MidTime:
              return new MidTimeEmployee($name);
            break;
            case EmployeeTypes::Contractor:
              return new Contractor($name);
            break;
        default:
           return null;
            break;*/


/*
    if ($type == EmployeeTypes::FullTime) {
        return new FullTimeEmployee($name);
    } else if ($type == EmployeeTypes::MidTime) {
        return new MidTimeEmployee($name);
    } else {
        return Contractor::GetContractor($name);
    }
    */

 
