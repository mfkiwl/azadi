

package gpio_reg_pkg;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////
  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_state_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } gpio_reg2hw_intr_test_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } gpio_reg2hw_direct_out_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
      logic        qe;
    } data;
    struct packed {
      logic [15:0] q;
      logic        qe;
    } mask;
  } gpio_reg2hw_masked_out_lower_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
      logic        qe;
    } data;
    struct packed {
      logic [15:0] q;
      logic        qe;
    } mask;
  } gpio_reg2hw_masked_out_upper_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } gpio_reg2hw_direct_oe_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
      logic        qe;
    } data;
    struct packed {
      logic [15:0] q;
      logic        qe;
    } mask;
  } gpio_reg2hw_masked_oe_lower_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
      logic        qe;
    } data;
    struct packed {
      logic [15:0] q;
      logic        qe;
    } mask;
  } gpio_reg2hw_masked_oe_upper_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_ctrl_en_rising_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_ctrl_en_falling_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_ctrl_en_lvlhigh_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_intr_ctrl_en_lvllow_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } gpio_reg2hw_ctrl_en_input_filter_reg_t;


  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } gpio_hw2reg_intr_state_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } gpio_hw2reg_data_in_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } gpio_hw2reg_direct_out_reg_t;

  typedef struct packed {
    struct packed {
      logic [9:0] d;
    } data;
    struct packed {
      logic [9:0] d;
    } mask;
  } gpio_hw2reg_masked_out_lower_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] d;
    } data;
    struct packed {
      logic [15:0] d;
    } mask;
  } gpio_hw2reg_masked_out_upper_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } gpio_hw2reg_direct_oe_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] d;
    } data;
    struct packed {
      logic [15:0] d;
    } mask;
  } gpio_hw2reg_masked_oe_lower_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] d;
    } data;
    struct packed {
      logic [15:0] d;
    } mask;
  } gpio_hw2reg_masked_oe_upper_reg_t;


  ///////////////////////////////////////
  // Register to internal design logic //
  ///////////////////////////////////////
  typedef struct packed {
    gpio_reg2hw_intr_state_reg_t intr_state; // [458:427]
    gpio_reg2hw_intr_enable_reg_t intr_enable; // [426:395]
    gpio_reg2hw_intr_test_reg_t intr_test; // [394:362]
    gpio_reg2hw_direct_out_reg_t direct_out; // [361:329]
    gpio_reg2hw_masked_out_lower_reg_t masked_out_lower; // [328:295]
    gpio_reg2hw_masked_out_upper_reg_t masked_out_upper; // [294:261]
    gpio_reg2hw_direct_oe_reg_t direct_oe; // [260:228]
    gpio_reg2hw_masked_oe_lower_reg_t masked_oe_lower; // [227:194]
    gpio_reg2hw_masked_oe_upper_reg_t masked_oe_upper; // [193:160]
    gpio_reg2hw_intr_ctrl_en_rising_reg_t intr_ctrl_en_rising; // [159:128]
    gpio_reg2hw_intr_ctrl_en_falling_reg_t intr_ctrl_en_falling; // [127:96]
    gpio_reg2hw_intr_ctrl_en_lvlhigh_reg_t intr_ctrl_en_lvlhigh; // [95:64]
    gpio_reg2hw_intr_ctrl_en_lvllow_reg_t intr_ctrl_en_lvllow; // [63:32]
    gpio_reg2hw_ctrl_en_input_filter_reg_t ctrl_en_input_filter; // [31:0]
  } gpio_reg2hw_t;

  ///////////////////////////////////////
  // Internal design logic to register //
  ///////////////////////////////////////
  typedef struct packed {
    gpio_hw2reg_intr_state_reg_t intr_state; // [257:225]
    gpio_hw2reg_data_in_reg_t data_in; // [224:192]
    gpio_hw2reg_direct_out_reg_t direct_out; // [191:160]
    gpio_hw2reg_masked_out_lower_reg_t masked_out_lower; // [159:128]
    gpio_hw2reg_masked_out_upper_reg_t masked_out_upper; // [127:96]
    gpio_hw2reg_direct_oe_reg_t direct_oe; // [95:64]
    gpio_hw2reg_masked_oe_lower_reg_t masked_oe_lower; // [63:32]
    gpio_hw2reg_masked_oe_upper_reg_t masked_oe_upper; // [31:0]
  } gpio_hw2reg_t;

  // Register Address
  parameter logic [5:0] GPIO_INTR_STATE_OFFSET = 6'h 0;
  parameter logic [5:0] GPIO_INTR_ENABLE_OFFSET = 6'h 4;
  parameter logic [5:0] GPIO_INTR_TEST_OFFSET = 6'h 8;
  parameter logic [5:0] GPIO_DATA_IN_OFFSET = 6'h c;
  parameter logic [5:0] GPIO_DIRECT_OUT_OFFSET = 6'h 10;
  parameter logic [5:0] GPIO_MASKED_OUT_LOWER_OFFSET = 6'h 14;
  parameter logic [5:0] GPIO_MASKED_OUT_UPPER_OFFSET = 6'h 18;
  parameter logic [5:0] GPIO_DIRECT_OE_OFFSET = 6'h 1c;
  parameter logic [5:0] GPIO_MASKED_OE_LOWER_OFFSET = 6'h 20;
  parameter logic [5:0] GPIO_MASKED_OE_UPPER_OFFSET = 6'h 24;
  parameter logic [5:0] GPIO_INTR_CTRL_EN_RISING_OFFSET = 6'h 28;
  parameter logic [5:0] GPIO_INTR_CTRL_EN_FALLING_OFFSET = 6'h 2c;
  parameter logic [5:0] GPIO_INTR_CTRL_EN_LVLHIGH_OFFSET = 6'h 30;
  parameter logic [5:0] GPIO_INTR_CTRL_EN_LVLLOW_OFFSET = 6'h 34;
  parameter logic [5:0] GPIO_CTRL_EN_INPUT_FILTER_OFFSET = 6'h 38;


  // Register Index
  typedef enum int {
    GPIO_INTR_STATE,
    GPIO_INTR_ENABLE,
    GPIO_INTR_TEST,
    GPIO_DATA_IN,
    GPIO_DIRECT_OUT,
    GPIO_MASKED_OUT_LOWER,
    GPIO_MASKED_OUT_UPPER,
    GPIO_DIRECT_OE,
    GPIO_MASKED_OE_LOWER,
    GPIO_MASKED_OE_UPPER,
    GPIO_INTR_CTRL_EN_RISING,
    GPIO_INTR_CTRL_EN_FALLING,
    GPIO_INTR_CTRL_EN_LVLHIGH,
    GPIO_INTR_CTRL_EN_LVLLOW,
    GPIO_CTRL_EN_INPUT_FILTER
  } gpio_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] GPIO_PERMIT [15] = '{
    4'b 1111, // index[ 0] GPIO_INTR_STATE
    4'b 1111, // index[ 1] GPIO_INTR_ENABLE
    4'b 1111, // index[ 2] GPIO_INTR_TEST
    4'b 1111, // index[ 3] GPIO_DATA_IN
    4'b 1111, // index[ 4] GPIO_DIRECT_OUT
    4'b 1111, // index[ 5] GPIO_MASKED_OUT_LOWER
    4'b 1111, // index[ 6] GPIO_MASKED_OUT_UPPER
    4'b 1111, // index[ 7] GPIO_DIRECT_OE
    4'b 1111, // index[ 8] GPIO_MASKED_OE_LOWER
    4'b 1111, // index[ 9] GPIO_MASKED_OE_UPPER
    4'b 1111, // index[10] GPIO_INTR_CTRL_EN_RISING
    4'b 1111, // index[11] GPIO_INTR_CTRL_EN_FALLING
    4'b 1111, // index[12] GPIO_INTR_CTRL_EN_LVLHIGH
    4'b 1111, // index[13] GPIO_INTR_CTRL_EN_LVLLOW
    4'b 1111  // index[14] GPIO_CTRL_EN_INPUT_FILTER
  };
endpackage

