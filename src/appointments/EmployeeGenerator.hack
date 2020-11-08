
class EmployeeGenerator{

    public static function CreateEmployee(string $type, string $name): ?Employee{

       switch ($type) {
           case EmployeeTypes::FullTime:
                return new FullTimeEmployee($name);
               break;
           case EmployeeTypes::MidTime:
                 return new MidTimeEmployee($name);
               break;
               case EmployeeTypes::Contractor:
                 return Contractor::GetContractor($name);
               break;
           default:
              return null;
               break;
       }
    }

}