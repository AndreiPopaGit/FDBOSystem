SELECT host, lower_port, upper_port, principal, privilege
FROM dba_host_aces
ORDER BY host;

SELECT USER FROM DUAL;

---------------------------------------- Grant HTTP privilege oracle can send request http UTL_HTTP

BEGIN
  DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
    host       => 'localhost',
    lower_port => 3000,  -- Adjust this to your PostgREST port
    upper_port => 3000,
    ace        => xs$ace_type(
                    privilege_list => xs$name_list('http'),
                    principal_name => 'SYSTEM',
                    principal_type => xs_acl.ptype_db
                 )
  );
END;
/
COMMIT;

SELECT host, lower_port, upper_port, principal, privilege
FROM dba_host_aces
ORDER BY host;


BEGIN
  DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
      host       => 'host.docker.internal',
      lower_port => 3000,
      upper_port => 3000,
      ace        => xs$ace_type(privilege_list => xs$name_list('http'),
                                principal_name => 'SYSTEM',
                                principal_type => xs_acl.ptype_db));
END;
/
COMMIT;


SELECT host, lower_port, upper_port, principal, privilege
FROM dba_host_aces
ORDER BY host;

DECLARE
  v_url VARCHAR2(4000) := 'http://host.docker.internal:3000/students';
  v_req  UTL_HTTP.REQ;
  v_resp UTL_HTTP.RESP;
  v_buffer VARCHAR2(4000);
  v_response CLOB := '';
BEGIN
  -- Make HTTP request
  v_req := UTL_HTTP.BEGIN_REQUEST(v_url);
  v_resp := UTL_HTTP.GET_RESPONSE(v_req);

  -- Read the response
  LOOP
    BEGIN
      UTL_HTTP.READ_LINE(v_resp, v_buffer);
      v_response := v_response || v_buffer || CHR(10);
    EXCEPTION
      WHEN UTL_HTTP.END_OF_BODY THEN
        EXIT;
    END;
  END LOOP;

  -- Close response
  UTL_HTTP.END_RESPONSE(v_resp);

  -- Print response
  DBMS_OUTPUT.PUT_LINE('Response: ' || v_response);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('❌ Error: ' || SQLERRM);
END;
/



