
/**
 * This class is for accessing users and optimizing code 
 * beacuse this app doesn't have persistence.
 */
class Data {

    public static vec<Employee> $EmployeesList = vec[];
}

//Payments conditions
enum PaymentConditions: string {
    Normal = "Condiciones normales del país";
    PartialQuarantine = "Estado de cuarentena fase 2";
    TotalQuarantine = "Estado de cuarentena total";
}

//Employee types
enum EmployeeTypes: string{
    FullTime = "Full time employee";
    MidTime = "Mid time employee";
    Contractor = "Contractor employee";
}