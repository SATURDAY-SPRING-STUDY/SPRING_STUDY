-- �����
ALTER TABLE TB_USER
  DROP CONSTRAINT PK_TB_USER; -- ����� �⺻Ű

-- �����
DROP TABLE TB_USER;

-- �����
CREATE TABLE TB_USER (
  ID       VARCHAR(18)  NOT NULL, -- ���̵�
  PW       VARCHAR2(18) NOT NULL, -- ��й�ȣ
  NAME     VARCHAR2(20) NOT NULL, -- �̸�
  NICKNAME VARCHAR2(20) NULL,     -- �г���
  EMAIL    VARCHAR2(30) NOT NULL, -- �̸���
  DELYN    VARCHAR2(1)  NULL      -- Ż�𿩺�
);

-- ����� �⺻Ű
CREATE UNIQUE INDEX PK_TB_USER
  ON TB_USER ( -- �����
    ID ASC -- ���̵�
  );

-- �����
ALTER TABLE TB_USER
  ADD
    CONSTRAINT PK_TB_USER -- ����� �⺻Ű
    PRIMARY KEY (
      ID -- ���̵�
    );


-- �Խ���
ALTER TABLE TB_BOARD
  DROP CONSTRAINT FK_TB_USER_TO_TB_BOARD; -- ����� -> �Խ���

-- �Խ���
ALTER TABLE TB_BOARD
  DROP CONSTRAINT PK_TB_BOARD; -- �Խ��� �⺻Ű

-- �Խ���
DROP TABLE TB_BOARD;

-- �Խ���
CREATE TABLE TB_BOARD (
  BOARD_SEQ VARCHAR(18)    NOT NULL, -- �Խ��� ������
  NO        NUMBER         NULL,     -- ��ȣ
  ID        VARCHAR(18)    NOT NULL, -- ���̵�
  TITLE     VARCHAR2(30)   NOT NULL, -- ����
  CONTENTS  VARCHAR2(1000) NULL,     -- ����
  READCNT   NUMBER         NULL,     -- ��ȸ��
  HITCNT    NUMBER         NULL,     -- ��õ��
  DELYN     VARCHAR2(1)    NULL      -- ��������
);

-- �Խ��� �⺻Ű
CREATE UNIQUE INDEX PK_TB_BOARD
  ON TB_BOARD ( -- �Խ���
    BOARD_SEQ ASC -- �Խ��� ������
  );

-- �Խ���
ALTER TABLE TB_BOARD
  ADD
    CONSTRAINT PK_TB_BOARD -- �Խ��� �⺻Ű
    PRIMARY KEY (
      BOARD_SEQ -- �Խ��� ������
    );

-- �Խ���
ALTER TABLE TB_BOARD
  ADD
    CONSTRAINT FK_TB_USER_TO_TB_BOARD -- ����� -> �Խ���
    FOREIGN KEY (
      ID -- ���̵�
    )
    REFERENCES TB_USER ( -- �����
      ID -- ���̵�
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


-- ���
ALTER TABLE TB_REPLY
  DROP CONSTRAINT FK_TB_BOARD_TO_TB_REPLY; -- �Խ��� -> ���

-- ���
ALTER TABLE TB_REPLY
  DROP CONSTRAINT FK_TB_USER_TO_TB_REPLY; -- ����� -> ���

-- ���
ALTER TABLE TB_REPLY
  DROP CONSTRAINT PK_TB_REPLY; -- ��� �⺻Ű

-- ���
DROP TABLE TB_REPLY;

-- ���
CREATE TABLE TB_REPLY (
  REPLY_SEQ VARCHAR(18)    NOT NULL, -- ��� ������
  BOARD_SEQ VARCHAR(18)    NOT NULL, -- �Խ��� ������
  ID        VARCHAR(18)    NOT NULL, -- ���̵�
  CONTENTS  VARCHAR2(1000) NULL,     -- ����
  DELYN     VARCHAR2(1)    NULL      -- ��������
);

-- ��� �⺻Ű
CREATE UNIQUE INDEX PK_TB_REPLY
  ON TB_REPLY ( -- ���
    REPLY_SEQ ASC -- ��� ������
  );

-- ���
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT PK_TB_REPLY -- ��� �⺻Ű
    PRIMARY KEY (
      REPLY_SEQ -- ��� ������
    );

-- ���
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT FK_TB_BOARD_TO_TB_REPLY -- �Խ��� -> ���
    FOREIGN KEY (
      BOARD_SEQ -- �Խ��� ������
    )
    REFERENCES TB_BOARD ( -- �Խ���
      BOARD_SEQ -- �Խ��� ������
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

-- ���
ALTER TABLE TB_REPLY
  ADD
    CONSTRAINT FK_TB_USER_TO_TB_REPLY -- ����� -> ���
    FOREIGN KEY (
      ID -- ���̵�
    )
    REFERENCES TB_USER ( -- �����
      ID -- ���̵�
    )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
