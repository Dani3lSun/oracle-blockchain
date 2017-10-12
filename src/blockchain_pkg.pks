CREATE OR REPLACE PACKAGE blockchain_pkg IS
  --
  -- Package for Blockchain Operations
  --

  --
  -- Get Blockchain Index of latest Blockchain entry
  -- #return NUMBER (bc_index)
  FUNCTION get_latest_block_index RETURN blockchain.bc_index%TYPE;
  --
  -- Get Blockchain Index of previous Blockchain entry
  -- #param p_current_index
  -- #return NUMBER (bc_index)
  FUNCTION get_previous_block_index(p_current_index IN blockchain.bc_index%TYPE)
    RETURN blockchain.bc_index%TYPE;
  --
  -- Get Rowtype Record of specified Blockchain entry (Block)
  -- #param p_bc_index
  -- #return blockchain%ROWTYPE
  FUNCTION get_block(p_bc_index IN blockchain.bc_index%TYPE)
    RETURN blockchain%ROWTYPE;
  --
  -- Get Rowtype Record of latest Blockchain entry (Block)
  -- #return blockchain%ROWTYPE
  FUNCTION get_latest_block RETURN blockchain%ROWTYPE;
  --
  -- Get Hash (Default SHA256) of Blockchain Block
  -- #param p_blockchain_block
  -- #param p_hash_algorithm
  -- #return VARCHAR2
  FUNCTION get_block_hash(p_blockchain_block IN blockchain%ROWTYPE,
                          p_hash_algorithm   IN PLS_INTEGER := dbms_crypto.hash_sh256)
    RETURN VARCHAR2;
  --
  -- Calculate Hash (Default SHA256) of new Blockchain Block
  -- #param p_bc_index
  -- #param p_bc_timestamp
  -- #param p_bc_data
  -- #param p_hash_algorithm
  -- #return VARCHAR2
  FUNCTION calculate_hash(p_bc_index       IN blockchain.bc_index%TYPE,
                          p_bc_timestamp   IN blockchain.bc_timestamp%TYPE,
                          p_bc_data        IN blockchain.bc_data%TYPE,
                          p_hash_algorithm IN PLS_INTEGER := dbms_crypto.hash_sh256)
    RETURN VARCHAR2;
  --
  -- Add new Blockchain Block entry (Autonomous Function)
  -- #param p_bc_timestamp
  -- #param p_bc_data
  -- #return NUMBER (bc_index)
  FUNCTION add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,
                     p_bc_data      IN blockchain.bc_data%TYPE)
    RETURN blockchain.bc_index%TYPE;
  --
  -- Add new Blockchain Block entry (Calling Autonomous Function)
  -- #param p_bc_timestamp
  -- #param p_bc_data
  -- #param p_bc_index (out)
  PROCEDURE add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,
                      p_bc_data      IN blockchain.bc_data%TYPE,
                      p_bc_index     OUT blockchain.bc_index%TYPE);
  --
  -- Check if Blockchain is valid
  -- #return BOOLEAN
  FUNCTION is_blockchain_valid RETURN BOOLEAN;
  --
  -- Get complete Blockchain as JSON - started with specified index
  -- #param p_start_index
  -- #return CLOB (JSON)
  FUNCTION get_blockchain_json(p_start_index IN blockchain.bc_index%TYPE := 1)
    RETURN CLOB;
  --
END blockchain_pkg;
/
