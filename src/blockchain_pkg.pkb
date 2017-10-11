CREATE OR REPLACE PACKAGE BODY blockchain_pkg IS
  --
  /*************************************************************************
  * Purpose:  Get Blockchain Index of latest Blockchain entry
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION get_latest_block_index RETURN blockchain.bc_index%TYPE IS
    --
    l_bc_index blockchain.bc_index%TYPE;
    --
  BEGIN
    --
    BEGIN
      SELECT MAX(blockchain.bc_index)
        INTO l_bc_index
        FROM blockchain;
    EXCEPTION
      WHEN no_data_found THEN
        RETURN 0;
    END;
    --
    RETURN l_bc_index;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END get_latest_block_index;
  --
  /*************************************************************************
  * Purpose:  Get Rowtype Record of specified Blockchain entry (Block)
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION get_block(p_bc_index IN blockchain.bc_index%TYPE)
    RETURN blockchain%ROWTYPE IS
    --
    l_blockchain_row blockchain%ROWTYPE;
    --
  BEGIN
    --
    BEGIN
      SELECT *
        INTO l_blockchain_row
        FROM blockchain
       WHERE blockchain.bc_index = p_bc_index;
    EXCEPTION
      WHEN no_data_found THEN
        l_blockchain_row.bc_index         := 0;
        l_blockchain_row.bc_timestamp     := to_timestamp('01-01-1970 00:00:00',
                                                          'DD-MM-YYYY HH24:MI:SS');
        l_blockchain_row.bc_previous_hash := 0;
        l_blockchain_row.bc_hash          := 0;
    END;
    --
    RETURN l_blockchain_row;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END get_block;
  --
  /*************************************************************************
  * Purpose:  Get Rowtype Record of latest Blockchain entry (Block)
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION get_latest_block RETURN blockchain%ROWTYPE IS
    --
    l_blockchain_row blockchain%ROWTYPE;
    --
  BEGIN
    --
    l_blockchain_row := blockchain_pkg.get_block(p_bc_index => blockchain_pkg.get_latest_block_index);
    --
    RETURN l_blockchain_row;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END get_latest_block;
  --
  /*************************************************************************
  * Purpose:  Get Hash (Default SHA256) of Blockchain Block
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION get_block_hash(p_blockchain_block IN blockchain%ROWTYPE,
                          p_hash_algorithm   IN PLS_INTEGER := dbms_crypto.hash_sh256)
    RETURN VARCHAR2 IS
    --
    l_hash     VARCHAR2(500);
    l_hash_src CLOB;
    --
  BEGIN
    --
    l_hash_src := p_blockchain_block.bc_index ||
                  to_char(p_blockchain_block.bc_timestamp,
                          'DD-MON-YYYY HH24:MI:SSxFF TZH:TZM') ||
                  p_blockchain_block.bc_data ||
                  p_blockchain_block.bc_previous_hash;
    --
    l_hash := dbms_crypto.hash(l_hash_src,
                               p_hash_algorithm);
    --
    RETURN l_hash;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END get_block_hash;
  --
  /*************************************************************************
  * Purpose:  Calculate Hash (Default SHA256) of new Blockchain Block
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION calculate_hash(p_bc_index       IN blockchain.bc_index%TYPE,
                          p_bc_timestamp   IN blockchain.bc_timestamp%TYPE,
                          p_bc_data        IN blockchain.bc_data%TYPE,
                          p_hash_algorithm IN PLS_INTEGER := dbms_crypto.hash_sh256)
    RETURN VARCHAR2 IS
    --
    l_prev_blockchain_row blockchain%ROWTYPE;
    l_prev_hash           VARCHAR2(500);
    l_hash                VARCHAR2(500);
    l_hash_src            CLOB;
    --
  BEGIN
    --
    l_prev_blockchain_row := blockchain_pkg.get_block(p_bc_index => p_bc_index - 1);
    l_prev_hash           := l_prev_blockchain_row.bc_hash;
    --
    l_hash_src := p_bc_index ||
                  to_char(p_bc_timestamp,
                          'DD-MON-YYYY HH24:MI:SSxFF TZH:TZM') || p_bc_data ||
                  l_prev_hash;
    --
    l_hash := dbms_crypto.hash(l_hash_src,
                               p_hash_algorithm);
    --
    RETURN l_hash;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END calculate_hash;
  --
  /*************************************************************************
  * Purpose:  Add new Blockchain Block entry (Autonomous Function)
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,
                     p_bc_data      IN blockchain.bc_data%TYPE)
    RETURN blockchain.bc_index%TYPE IS
    --
    PRAGMA AUTONOMOUS_TRANSACTION;
    --
    l_prev_blockchain_row blockchain%ROWTYPE;
    l_prev_hash           VARCHAR2(500);
    l_hash                VARCHAR2(500);
    l_bc_index            blockchain.bc_index%TYPE;
    --
  BEGIN
    --
    l_bc_index            := blockchain_seq.nextval;
    l_prev_blockchain_row := blockchain_pkg.get_latest_block;
    l_prev_hash           := l_prev_blockchain_row.bc_hash;
    l_hash                := blockchain_pkg.calculate_hash(p_bc_index     => l_bc_index,
                                                           p_bc_timestamp => p_bc_timestamp,
                                                           p_bc_data      => p_bc_data);
    --
    INSERT INTO blockchain
      (bc_index,
       bc_timestamp,
       bc_data,
       bc_previous_hash,
       bc_hash)
    VALUES
      (l_bc_index,
       p_bc_timestamp,
       p_bc_data,
       l_prev_hash,
       l_hash);
    --
    COMMIT;
    --
    RETURN l_bc_index;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END add_block;
  --
  /*************************************************************************
  * Purpose:  Add new Blockchain Block entry (Autonomous Procedure)
  * Author:   Daniel Hochleitner
  * Created:  11.10.2017
  * Changed:
  *************************************************************************/
  PROCEDURE add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,
                      p_bc_data      IN blockchain.bc_data%TYPE,
                      p_bc_index     OUT blockchain.bc_index%TYPE) IS
    --
    PRAGMA AUTONOMOUS_TRANSACTION;
    --
    l_prev_blockchain_row blockchain%ROWTYPE;
    l_prev_hash           VARCHAR2(500);
    l_hash                VARCHAR2(500);
    l_bc_index            blockchain.bc_index%TYPE;
    --
  BEGIN
    --
    l_bc_index            := blockchain_seq.nextval;
    l_prev_blockchain_row := blockchain_pkg.get_latest_block;
    l_prev_hash           := l_prev_blockchain_row.bc_hash;
    l_hash                := blockchain_pkg.calculate_hash(p_bc_index     => l_bc_index,
                                                           p_bc_timestamp => p_bc_timestamp,
                                                           p_bc_data      => p_bc_data);
    --
    INSERT INTO blockchain
      (bc_index,
       bc_timestamp,
       bc_data,
       bc_previous_hash,
       bc_hash)
    VALUES
      (l_bc_index,
       p_bc_timestamp,
       p_bc_data,
       l_prev_hash,
       l_hash);
    --
    COMMIT;
    --
    p_bc_index := l_bc_index;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END add_block;
  --
  /*************************************************************************
  * Purpose:  Check if Blockchain is valid
  * Author:   Daniel Hochleitner
  * Created:  09.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION is_blockchain_valid RETURN BOOLEAN IS
    --
    l_current_block blockchain%ROWTYPE;
    l_prev_block    blockchain%ROWTYPE;
    l_current_hash  VARCHAR2(500);
    --
    CURSOR l_cur_blockchain IS
      SELECT blockchain.bc_index
        FROM blockchain
       ORDER BY blockchain.bc_index;
    --
  BEGIN
    --
    FOR l_rec_blockchain IN l_cur_blockchain LOOP
      l_current_block := blockchain_pkg.get_block(p_bc_index => l_rec_blockchain.bc_index);
      l_prev_block    := blockchain_pkg.get_block(p_bc_index => l_rec_blockchain.bc_index - 1);
      l_current_hash  := blockchain_pkg.get_block_hash(p_blockchain_block => l_current_block);
      --
      IF l_current_block.bc_hash != l_current_hash THEN
        RETURN FALSE;
      END IF;
      --
      IF l_current_block.bc_previous_hash != l_prev_block.bc_hash THEN
        RETURN FALSE;
      END IF;
      --    
    END LOOP;
    --
    RETURN TRUE;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END is_blockchain_valid;
  --
  /*************************************************************************
  * Purpose:  Get complete Blockchain as JSON - started with specified index
  * Author:   Daniel Hochleitner
  * Created:  10.10.2017
  * Changed:
  *************************************************************************/
  FUNCTION get_blockchain_json(p_start_index IN blockchain.bc_index%TYPE := 1)
    RETURN CLOB IS
    --
    l_bc_json CLOB;
    --
    CURSOR l_cur_blockchain IS
      SELECT blockchain.bc_index,
             to_char(blockchain.bc_timestamp,
                     'DD-MON-YYYY HH24:MI:SSxFF TZH:TZM') AS bc_timestamp_string,
             apex_escape.json(substr(blockchain.bc_data,
                                     1,
                                     4000)) AS bc_data_string,
             blockchain.bc_previous_hash,
             blockchain.bc_hash
        FROM blockchain
       WHERE blockchain.bc_index >= p_start_index
       ORDER BY blockchain.bc_index;
    --
  BEGIN
    --
    apex_json.initialize_clob_output;
    apex_json.open_array;
    --
    FOR l_rec_blockchain IN l_cur_blockchain LOOP
      apex_json.open_object;
      apex_json.write('index',
                      l_rec_blockchain.bc_index);
      apex_json.write('timestamp',
                      l_rec_blockchain.bc_timestamp_string);
      apex_json.write('data',
                      l_rec_blockchain.bc_data_string);
      apex_json.write('previousHash',
                      l_rec_blockchain.bc_previous_hash);
      apex_json.write('hash',
                      l_rec_blockchain.bc_hash);
      apex_json.close_object;
    END LOOP;
    --
    apex_json.close_array;
    --
    l_bc_json := apex_json.get_clob_output;
    apex_json.free_output;
    --
    RETURN l_bc_json;
    --
  EXCEPTION
    WHEN OTHERS THEN
      RAISE;
  END get_blockchain_json;
  --
END blockchain_pkg;
/
