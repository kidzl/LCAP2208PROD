using {pdm} from './pdm-schema';
using {CrystalPDMTest} from './schema';
annotate CrystalPDMTest.students with @PersonalData :{
  EntitySemantics: 'DataSubject',
  DataSubjectRole: 'Data Subject Role',
  DataSubjectRoleDescription: 'Data Subject Role'
}
{
  studentsID     @PersonalData.FieldSemantics: 'DataSubjectID';
  firstname     @PersonalData.IsPotentiallyPersonal;
  lastname     @PersonalData.IsPotentiallyPersonal;
  age     @PersonalData.IsPotentiallySensitive;
  email     @PersonalData.IsPotentiallyPersonal;
  address     @PersonalData.IsPotentiallyPersonal;
  birthday     @PersonalData.IsPotentiallyPersonal;
  sex     @PersonalData.IsPotentiallyPersonal;
  tel     @PersonalData.IsPotentiallyPersonal;
}
annotate CrystalPDMTest.students with @Communication.Contact: {
  n: {
    given: firstname,
    surname: lastname
},
  bday: birthday
 };