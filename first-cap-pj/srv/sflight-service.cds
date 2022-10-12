using btp.academy as btp from '../db/sflight-model';

service sflightService {
    // @readonly
    entity Customers as projection on btp.SCUSTOM;
    entity BerlinCustomer as projection on btp.SCUSTOM_V;
}