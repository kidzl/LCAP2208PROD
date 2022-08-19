namespace CrystalPDMTest;

using sap.workflow from './WorkflowObject';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity students
{
    key studentsID : Integer;
    firstname : String(100);
    lastname : String(100);
    age : Integer;
    email : String(100);
    address : String(100);
    birthday : Date;
    sex : Boolean;
    tel : String(100);
    mobile : String(100);
    teachers : Association to one teachers;
}

entity teachers
{
    key teacherID : UUID
        @Core.Computed;
    firstname : String(100);
    lastname : String(100);
    email : String(100);
    birthday : Date;
    sex : Boolean;
    address : String(100);
    age : Integer;
    students : Association to many students on students.teachers = $self;
}
