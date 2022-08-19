using {CrystalPDMTest} from '../db/schema';
using {pdm} from '../db/pdm-schema';
using from  '../db/data-privacy';
@requires: 'PersonalDataManager'
@path: 'service/pdm'
@PersonalDataManagerService: true
service PDMService {
  entity CrystalPDMTest_students as projection on CrystalPDMTest.students;
}