

<<__EntryPoint>>
function Main(): void {
    require_once(__DIR__.'/../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    /*
    EL SINGLETON FUNCIONA
    El Singleton no debe devolver null para que el EmployeeGenerator funcione
    PaymentStrategy no puesde aceptar Contractor con el singleton nullable
    EmployeeGenerator debe implementar los EmployeeTypes con un switch,
        cuando lo hago me retorna el error: Uncaught Error: Class undefined: EmployeeTypes 
    *Opcional: Payment estrategy deberia tener un metodo static para acceder al pago
    *Opcional: El PricePerHour se deberia iniciar en el constructor
    */

    $emp = EmployeeGenerator::CreateEmployee(EmployeeTypes::Contractor, "Jeo", 25.6);
    print($emp->Get_Name() . "\n");

    $strategy = new PaymentStrategy();
    $payment = $strategy->Get_Salary($emp, PaymentConditions::Normal);
    echo "$payment \n";


}
