DECLARE
  NUM_A NUMBER := 3;
  NUM_B NUMBER := 2;
BEGIN
  IF NUM_A < NUM_B THEN
    DBMS_OUTPUT.PUT_LINE('NUM_A < NUM_B: ' || TO_CHAR(NUM_A) || ' < ' || TO_CHAR(NUM_B));
  ELSIF NUM_A = NUM_B THEN
    DBMS_OUTPUT.PUT_LINE('NUM_A = NUM_B: ' || TO_CHAR(NUM_A) || ' = ' || TO_CHAR(NUM_B));
  ELSE
    DBMS_OUTPUT.PUT_LINE('NUM_A > NUM_B: ' || TO_CHAR(NUM_A) || ' > ' || TO_CHAR(NUM_B));
  END IF;
END;