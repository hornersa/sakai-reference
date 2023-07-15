-- S2U-21 --
CREATE TABLE SAM_SEBVALIDATION_T (
  ID BIGINT(20) NOT NULL AUTO_INCREMENT,
  PUBLISHEDASSESSMENTID BIGINT(20) NOT NULL,
  AGENTID VARCHAR(99) NOT NULL,
  URL VARCHAR(255) NOT NULL,
  CONFIGKEYHASH VARCHAR(64) DEFAULT NULL,
  EXAMKEYHASH VARCHAR(64) DEFAULT NULL,
  EXPIRED BIT(1) NOT NULL,
  CONSTRAINT PK_SAM_SEBVALIDATION_T PRIMARY KEY (ID)
);

CREATE INDEX SAM_SEB_INDEX ON SAM_SEBVALIDATION_T (PUBLISHEDASSESSMENTID, AGENTID);
-- END S2U-21 --