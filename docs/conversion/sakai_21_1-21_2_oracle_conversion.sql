-- SAK-45435
ALTER TABLE lti_tools ADD lti13_platform_public_old CLOB;
ALTER TABLE lti_tools ADD lti13_platform_public_old_at DATE DEFAULT NULL;
-- End SAK-45435

-- SAK-43510
ALTER TABLE SAKAI_PERSON_T ADD PRONOUNS VARCHAR(255);
-- End SAK-43510

