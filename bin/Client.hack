

<<__EntryPoint>>
function Main(): void {
    require_once(__DIR__.'/../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    //$em = EmployeeGenerator::CreateEmployee(EmployeeTypes::MidTime, "Joe", 58.2);

    //$obj1 = Contractor::GetContractor("Jeo");

    /* if (is_null($obj1)) {
         print("Es null \n");
     }
     else {
          print("Tiene instancia \n");
     }
     
     $ob2 = Contractor::GetContractor("Carlos");

     if ($obj1 == $ob2) {
        echo "Son iguales \n";
     }
     else {
         echo "No son lo mismo \n";
     }*/

    /* $e = new FullTimeEmployee("Joe");

     $strategy = new PaymentStrategy();
     $strategy->CallPayment($e, PaymentConditions::Normal);*/

    /* Note:
    I get the error Fatal error: Uncaught Error: Class undefined: EmployeeGenerator
    Also the singleton in the Contractor should not return null

    print(is_null($em));


    $obj1 = new FullTimeEmployee("Jeo");
    /* $name =  $obj1->Get_Name();
    print($name);*/


    /*
    EL SINGLETON FUNCIONA
    El Singleton no debe devolver null para que el EmployeeGenerator funcione
    PaymentStrategy no puesde aceptar Contractor tal como esta
    *Opcional: Payment estrategy deberia tener un metodo static para acceder al pago
    *Opcional: El PricePerHour se deberia iniciar en el constructor

    */
   /* $obj1 = new FullTimeEmployee("Matha", 15.0);
    $obj1->Set_PricePerHour(154.0);
    $est = new PaymentStrategy();


    $est1 = $est->Get_Salary($obj1, PaymentConditions::TotalQuarantine);
    print($obj1->Get_Name());
    echo "$est1";*/
    $tipo = EmployeeTypes::FullTime;
    $emp = EmployeeGenerator::CreateEmployee($tipo, "Jeo", 25.6);

}
