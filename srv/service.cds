using { CrystalPDMTest as my } from '../db/schema';

@path : 'service/CrystalPDMTest'
service CrystalPDMTestService
{
    entity students as
        projection on my.students
        {
            *
        };

    entity teachers as
        projection on my.teachers
        {
            *
        };
}

annotate CrystalPDMTestService with @requires :
[
    'authenticated-user'
];
