cmd> sqlplus "sys as sysdba"
create user TOBI identified by TOBI123;
grant connect, resource to TOBI;
grant create view to TOBI;
conn TOBI/TOBI123

-- 사용자
ALTER TABLE TB_USER
  DROP CONSTRAINT PK_TB_USER; -- 사용자 기본키

-- 사용자
DROP TABLE TB_USER;

-- 사용자
CREATE TABLE TB_USER (
  ID       VARCHAR(18)  NOT NULL, -- 아이디
  PW       VARCHAR2(18) NOT NULL, -- 비밀번호
  NAME     VARCHAR2(20) NOT NULL, -- 이름
  NICKNAME VARCHAR2(20) NULL,     -- 닉네임
  EMAIL    VARCHAR2(30) NOT NULL, -- 이메일
  DELYN    VARCHAR2(1)  NULL      -- 탈퇴여부
);

-- 사용자 기본키
CREATE UNIQUE INDEX PK_TB_USER
  ON TB_USER ( -- 사용자
    ID ASC -- 아이디
  );

-- 사용자
ALTER TABLE TB_USER
  ADD
    CONSTRAINT PK_TB_USER -- 사용자 기본키
    PRIMARY KEY (
      ID -- 아이디
    );


-- 게시판
ALTER TABLE TB_BOARD
  DROP CONSTRAINT FK_TB_USER_TO_TB_BOARD; -- 사용자 -> 게시판

-- 게시판
ALTER TABLE TB_BOARD
  DROP CONSTRAINT PK_TB_BOARD; -- 게시판 기본키

-- 게시판
DROP TABLE TB_BOARD;

-- 게시판
CREATE TABLE TB_BOARD (
  BOARD_SEQ VARCHAR(18)    NOT NULL, -- 게시판 시퀀스
  NO        NUMBER         NULL,     -- 번호
  ID        VARCHAR(18)    NOT NULL, -- 아이디
  TITLE     VARCHAR2(30)   NOT NULL, -- 제목
  CONTENTS  VARCHAR2(1000) NULL,     -- 내용
  READCNT   NUMBER         NULL,     -- 조회수
  HITCNT    NUMBER         NULL,     -- 추천수
  DELYN     VARCHAR2(1)    NULL      -- 삭제여부
);

-- 게시판 기본키
CREATE UNIQUE INDEX PK_TB_BOARD
  ON TB_BOARD ( -- 게시판
    BOARD_SEQ ASC -- 게시판 시퀀스
  );

-- 게시판
ALTER TABLE TB_BOARD
  ADD
    CONSTRAINT PK_TB_BOARD -- 게시판 기본키
    PRIMARY KEY (
      BOARD_SEQ -- 게시판 시퀀스
    );

-- 게시판
ALTER TABLE TB_BOARD
  ADD
    CONSTRAINT FK_TB_USER_TO_TB_BOARD -- 사용자 -> 게시판
    FOREIGN KEY (
      ID -- 아이디
    )
    REFERENCES TB_USER ( -- 사용자
      ID -- 아이디
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


-- 댓글
ALTER TABLE TB_REPLY
  DROP CONSTRAINT FK_TB_BOARD_TO_TB_REPLY; -- 게시판 -> 댓글

-- 댓글
ALTER TABLE TB_REPLY
  DROP CONSTRAINT FK_TB_USER_TO_TB_REPLY; -- 사용자 -> 댓글

-- 댓글
ALTER TABLE TB_REPLY
  DROP CONSTRAINT PK_TB_REPLY; -- 댓글 기본키

-- 댓글
DROP TABLE TB_REPLY;

-- 댓글
CREATE TABLE TB_REPLY (
  REPLY_SEQ VARCHAR(18)    NOT NULL, -- 댓글 시퀀스
  BOARD_SEQ VARCHAR(18)    NOT NULL, -- 게시판 시퀀스
  ID        VARCHAR(18)    NOT NULL, -- 아이디
  CONTENTS  VARCHAR2(1000) NULL,     -- 내용
  DELYN     VARCHAR2(1)    NULL      -- 삭제여부
);

-- 댓글 기본키
CREATE UNIQUE INDEX PK_TB_REPLY
  ON TB_REPLY ( -- 댓글
    REPLY_SEQ ASC -- 댓글 시퀀스
  );

-- 댓글
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT PK_TB_REPLY -- 댓글 기본키
    PRIMARY KEY (
      REPLY_SEQ -- 댓글 시퀀스
    );

-- 댓글
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT FK_TB_BOARD_TO_TB_REPLY -- 게시판 -> 댓글
    FOREIGN KEY (
      BOARD_SEQ -- 게시판 시퀀스
    )
    REFERENCES TB_BOARD ( -- 게시판
      BOARD_SEQ -- 게시판 시퀀스
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- 댓글
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT FK_TB_USER_TO_TB_REPLY -- 사용자 -> 댓글
    FOREIGN KEY (
      ID -- 아이디
    )
    REFERENCES TB_USER ( -- 사용자
      ID -- 아이디
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
