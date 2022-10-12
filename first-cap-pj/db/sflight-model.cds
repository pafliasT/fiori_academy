namespace btp.academy;

entity SCUSTOM {
    key ID        : String(8) default '00000000';
        NAME      : String(25);
        FORM      : String(15);
        STREET    : String(30);
        POSTBOX   : String(10);
        POSTCODE  : String(10);
        CITY      : String(25);
        COUNTRY   : String(3);
        REGION    : String(3);
        TELEPHONE : String(30);
        CUSTTYPE  : String(1);
        DISCOUNT  : String(3) default '000';
        LANGU     : String(1);
        EMAIL     : String(40);


}


view SCUSTOM_V as
    select from SCUSTOM {
        key ID,
            NAME,
            FORM,
            STREET,
            POSTBOX,
            POSTCODE,
            CITY
    }
    WHERE CITY='Berlin' ;
