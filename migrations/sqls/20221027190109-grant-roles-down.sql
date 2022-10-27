ALTER DEFAULT PRIVILEGES REVOKE EXECUTE ON functions FROM public;

REVOKE usage ON SCHEMA learn TO learn_annonymous, learn_person;

REVOKE
EXECUTE
    ON FUNCTION learn.register_person (text, text, text, text) TO learn_annonymous,
    learn_person;

REVOKE
EXECUTE
    ON FUNCTION learn.authenticate (text, text) TO learn_annonymous,
    learn_person;

REVOKE
EXECUTE
    ON FUNCTION learn.handle_score (text, text) TO learn_person;

REVOKE ALL PRIVILEGES ON TABLE learn.person TO learn_person;

REVOKE SELECT, DELETE ON TABLE learn.card TO learn_person;

REVOKE
INSERT,
UPDATE (id, question, answer, archived) ON
TABLE
    learn.card TO learn_person;

REVOKE usage ON SEQUENCE learn.card_id_seq TO learn.person;

REVOKE SELECT ON TABLE learn.response TO learn_person;

REVOKE SELECT ON learn.next_card TO learn_person;