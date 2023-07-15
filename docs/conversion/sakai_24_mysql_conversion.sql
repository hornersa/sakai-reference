-- clear unchanged bundle properties
DELETE SAKAI_MESSAGE_BUNDLE from SAKAI_MESSAGE_BUNDLE where PROP_VALUE is NULL;

-- SAK-48106
UPDATE user_audits_log AS audits INNER JOIN SAKAI_USER_ID_MAP AS idmap ON audits.user_id = idmap.eid SET audits.user_id = idmap.user_id;
UPDATE user_audits_log AS audits INNER JOIN SAKAI_USER_ID_MAP AS idmap ON audits.action_user_id = idmap.eid SET audits.action_user_id = idmap.user_id;
-- END SAK-48106

-- SAK-48238
ALTER TABLE CONTENT_RESOURCE ADD COLUMN RESOURCE_SHA256 VARCHAR (64);
CREATE INDEX CONTENT_RESOURCE_SHA256 ON CONTENT_RESOURCE (RESOURCE_SHA256);
CREATE INDEX CONTENT_RESOURCE_FILE_PATH ON CONTENT_RESOURCE (FILE_PATH);

ALTER TABLE CONTENT_RESOURCE_BODY_BINARY ADD COLUMN RESOURCE_SHA256 VARCHAR (64);
CREATE INDEX CONTENT_RESOURCE_BB_SHA256 ON CONTENT_RESOURCE_BODY_BINARY (RESOURCE_SHA256 );

ALTER TABLE CONTENT_RESOURCE_DELETE ADD COLUMN RESOURCE_SHA256 VARCHAR (64);
CREATE INDEX CONTENT_RESOURCE_SHA256_DELETE_I ON CONTENT_RESOURCE_DELETE (RESOURCE_SHA256);
CREATE INDEX CONTENT_RESOURCE_FILE_PATH_DELETE_I ON CONTENT_RESOURCE_DELETE (FILE_PATH);
-- End SAK-48328