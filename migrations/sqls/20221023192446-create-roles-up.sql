CREATE ROLE learn_postgtaphile LOGIN PASSWORD 'secret_password';

CREATE ROLE learn_annonymous;

GRANT learn_annonymous TO learn_postgtaphile;

CREATE ROLE learn_person;

GRANT learn_person TO learn_postgtaphile;