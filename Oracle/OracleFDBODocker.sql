CREATE USER fdbo IDENTIFIED BY fdbo123;
GRANT CONNECT, RESOURCE TO fdbo;
ALTER USER fdbo DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

GRANT CREATE DATABASE LINK TO fdbo;

BEGIN
  DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE (
    host => 'host.docker.internal',
    lower_port => 3000,
    upper_port => 3000,
    ace => xs$ace_type(
      privilege_list => xs$name_list('http'),
      principal_name => 'FDBO',
      principal_type => xs_acl.ptype_db
    )
  );
END;
/
COMMIT;

GRANT EXECUTE ON UTL_HTTP TO fdbo;
GRANT CREATE VIEW TO fdbo;


CREATE OR REPLACE DIRECTORY EXT_FILE_DS AS '/opt/oracle/ext_data';
GRANT READ, WRITE ON DIRECTORY EXT_FILE_DS TO fdbo;


----GRANT HTTP Acces for MongoDB to fdbo

BEGIN
  DBMS_NETWORK_ACL_ADMIN.append_host_ace (
    host       => 'host.docker.internal',
    lower_port => 8080,
    upper_port => 8080,
    ace        => xs$ace_type(
                    privilege_list => xs$name_list('http'),
                    principal_name => 'FDBO',
                    principal_type => xs_acl.ptype_db)
  );
END;
/
COMMIT;

SELECT host, lower_port, upper_port, principal, privilege
FROM dba_host_aces
WHERE principal = 'FDBO';


GRANT INHERIT PRIVILEGES ON USER ORDS_METADATA TO FDBO;

BEGIN
  ORDS.ENABLE_SCHEMA(
    p_enabled => TRUE,
    p_schema => 'FDBO',
    p_url_mapping_type => 'BASE_PATH',
    p_url_mapping_pattern => 'fdbo',
    p_auto_rest_auth => FALSE
  );
  COMMIT;
END;

SELECT owner
FROM all_objects
WHERE object_name = 'ORDS'
AND object_type = 'PACKAGE';

GRANT INHERIT PRIVILEGES ON USER ORDS_METADATA TO FDBO;


