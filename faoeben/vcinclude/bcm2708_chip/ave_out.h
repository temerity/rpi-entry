// This file was generated by the create_regs script
#define AVE_OUT_BASE                                             0x7e240000
#define AVE_OUT_APB_ID                                           0x61766538
#define AVE_OUT_CTRL                                             HW_REGISTER_RW( 0x7e240000 ) 
   #define AVE_OUT_CTRL_MASK                                     0xc0fff13f
   #define AVE_OUT_CTRL_WIDTH                                    32
   #define AVE_OUT_CTRL_RESET                                    0x40000100
      #define AVE_OUT_CTRL_ENABLE_BITS                           31:31
      #define AVE_OUT_CTRL_ENABLE_SET                            0x80000000
      #define AVE_OUT_CTRL_ENABLE_CLR                            0x7fffffff
      #define AVE_OUT_CTRL_ENABLE_MSB                            31
      #define AVE_OUT_CTRL_ENABLE_LSB                            31
      #define AVE_OUT_CTRL_SOFT_RESET_BITS                       30:30
      #define AVE_OUT_CTRL_SOFT_RESET_SET                        0x40000000
      #define AVE_OUT_CTRL_SOFT_RESET_CLR                        0xbfffffff
      #define AVE_OUT_CTRL_SOFT_RESET_MSB                        30
      #define AVE_OUT_CTRL_SOFT_RESET_LSB                        30
      #define AVE_OUT_CTRL_BYTE_SWAP_BITS                        23:19
      #define AVE_OUT_CTRL_BYTE_SWAP_SET                         0x00f80000
      #define AVE_OUT_CTRL_BYTE_SWAP_CLR                         0xff07ffff
      #define AVE_OUT_CTRL_BYTE_SWAP_MSB                         23
      #define AVE_OUT_CTRL_BYTE_SWAP_LSB                         19
      #define AVE_OUT_CTRL_INVERT_DSYNC_BITS                     18:18
      #define AVE_OUT_CTRL_INVERT_DSYNC_SET                      0x00040000
      #define AVE_OUT_CTRL_INVERT_DSYNC_CLR                      0xfffbffff
      #define AVE_OUT_CTRL_INVERT_DSYNC_MSB                      18
      #define AVE_OUT_CTRL_INVERT_DSYNC_LSB                      18
      #define AVE_OUT_CTRL_INVERT_CSYNC_BITS                     17:17
      #define AVE_OUT_CTRL_INVERT_CSYNC_SET                      0x00020000
      #define AVE_OUT_CTRL_INVERT_CSYNC_CLR                      0xfffdffff
      #define AVE_OUT_CTRL_INVERT_CSYNC_MSB                      17
      #define AVE_OUT_CTRL_INVERT_CSYNC_LSB                      17
      #define AVE_OUT_CTRL_INVERT_EVEN_FIELD_BITS                16:16
      #define AVE_OUT_CTRL_INVERT_EVEN_FIELD_SET                 0x00010000
      #define AVE_OUT_CTRL_INVERT_EVEN_FIELD_CLR                 0xfffeffff
      #define AVE_OUT_CTRL_INVERT_EVEN_FIELD_MSB                 16
      #define AVE_OUT_CTRL_INVERT_EVEN_FIELD_LSB                 16
      #define AVE_OUT_CTRL_INVERT_VSYNC_BITS                     15:15
      #define AVE_OUT_CTRL_INVERT_VSYNC_SET                      0x00008000
      #define AVE_OUT_CTRL_INVERT_VSYNC_CLR                      0xffff7fff
      #define AVE_OUT_CTRL_INVERT_VSYNC_MSB                      15
      #define AVE_OUT_CTRL_INVERT_VSYNC_LSB                      15
      #define AVE_OUT_CTRL_INVERT_HSYNC_BITS                     14:14
      #define AVE_OUT_CTRL_INVERT_HSYNC_SET                      0x00004000
      #define AVE_OUT_CTRL_INVERT_HSYNC_CLR                      0xffffbfff
      #define AVE_OUT_CTRL_INVERT_HSYNC_MSB                      14
      #define AVE_OUT_CTRL_INVERT_HSYNC_LSB                      14
      #define AVE_OUT_CTRL_NTSC_PAL_IDENT_BITS                   13:13
      #define AVE_OUT_CTRL_NTSC_PAL_IDENT_SET                    0x00002000
      #define AVE_OUT_CTRL_NTSC_PAL_IDENT_CLR                    0xffffdfff
      #define AVE_OUT_CTRL_NTSC_PAL_IDENT_MSB                    13
      #define AVE_OUT_CTRL_NTSC_PAL_IDENT_LSB                    13
      #define AVE_OUT_CTRL_INTERLEAVE_BITS                       12:12
      #define AVE_OUT_CTRL_INTERLEAVE_SET                        0x00001000
      #define AVE_OUT_CTRL_INTERLEAVE_CLR                        0xffffefff
      #define AVE_OUT_CTRL_INTERLEAVE_MSB                        12
      #define AVE_OUT_CTRL_INTERLEAVE_LSB                        12
      #define AVE_OUT_CTRL_PRIV_ACCESS_BITS                      8:8
      #define AVE_OUT_CTRL_PRIV_ACCESS_SET                       0x00000100
      #define AVE_OUT_CTRL_PRIV_ACCESS_CLR                       0xfffffeff
      #define AVE_OUT_CTRL_PRIV_ACCESS_MSB                       8
      #define AVE_OUT_CTRL_PRIV_ACCESS_LSB                       8
      #define AVE_OUT_CTRL_MODE_BITS                             5:4
      #define AVE_OUT_CTRL_MODE_SET                              0x00000030
      #define AVE_OUT_CTRL_MODE_CLR                              0xffffffcf
      #define AVE_OUT_CTRL_MODE_MSB                              5
      #define AVE_OUT_CTRL_MODE_LSB                              4
      #define AVE_OUT_CTRL_REFRESH_RATE_BITS                     3:2
      #define AVE_OUT_CTRL_REFRESH_RATE_SET                      0x0000000c
      #define AVE_OUT_CTRL_REFRESH_RATE_CLR                      0xfffffff3
      #define AVE_OUT_CTRL_REFRESH_RATE_MSB                      3
      #define AVE_OUT_CTRL_REFRESH_RATE_LSB                      2
      #define AVE_OUT_CTRL_COEFF_IRQ_EN_BITS                     1:1
      #define AVE_OUT_CTRL_COEFF_IRQ_EN_SET                      0x00000002
      #define AVE_OUT_CTRL_COEFF_IRQ_EN_CLR                      0xfffffffd
      #define AVE_OUT_CTRL_COEFF_IRQ_EN_MSB                      1
      #define AVE_OUT_CTRL_COEFF_IRQ_EN_LSB                      1
      #define AVE_OUT_CTRL_ERROR_IRQ_EN_BITS                     0:0
      #define AVE_OUT_CTRL_ERROR_IRQ_EN_SET                      0x00000001
      #define AVE_OUT_CTRL_ERROR_IRQ_EN_CLR                      0xfffffffe
      #define AVE_OUT_CTRL_ERROR_IRQ_EN_MSB                      0
      #define AVE_OUT_CTRL_ERROR_IRQ_EN_LSB                      0
#define AVE_OUT_STATUS                                           HW_REGISTER_RW( 0x7e240004 ) 
   #define AVE_OUT_STATUS_MASK                                   0x000003f7
   #define AVE_OUT_STATUS_WIDTH                                  10
   #define AVE_OUT_STATUS_RESET                                  0000000000
      #define AVE_OUT_STATUS_VSYNC_BITS                          9:9
      #define AVE_OUT_STATUS_VSYNC_SET                           0x00000200
      #define AVE_OUT_STATUS_VSYNC_CLR                           0xfffffdff
      #define AVE_OUT_STATUS_VSYNC_MSB                           9
      #define AVE_OUT_STATUS_VSYNC_LSB                           9
      #define AVE_OUT_STATUS_VBACK_PORCH_BITS                    8:8
      #define AVE_OUT_STATUS_VBACK_PORCH_SET                     0x00000100
      #define AVE_OUT_STATUS_VBACK_PORCH_CLR                     0xfffffeff
      #define AVE_OUT_STATUS_VBACK_PORCH_MSB                     8
      #define AVE_OUT_STATUS_VBACK_PORCH_LSB                     8
      #define AVE_OUT_STATUS_VFRONT_PORCH_BITS                   7:7
      #define AVE_OUT_STATUS_VFRONT_PORCH_SET                    0x00000080
      #define AVE_OUT_STATUS_VFRONT_PORCH_CLR                    0xffffff7f
      #define AVE_OUT_STATUS_VFRONT_PORCH_MSB                    7
      #define AVE_OUT_STATUS_VFRONT_PORCH_LSB                    7
      #define AVE_OUT_STATUS_HSYNC_BITS                          6:6
      #define AVE_OUT_STATUS_HSYNC_SET                           0x00000040
      #define AVE_OUT_STATUS_HSYNC_CLR                           0xffffffbf
      #define AVE_OUT_STATUS_HSYNC_MSB                           6
      #define AVE_OUT_STATUS_HSYNC_LSB                           6
      #define AVE_OUT_STATUS_HBACK_PORCH_BITS                    5:5
      #define AVE_OUT_STATUS_HBACK_PORCH_SET                     0x00000020
      #define AVE_OUT_STATUS_HBACK_PORCH_CLR                     0xffffffdf
      #define AVE_OUT_STATUS_HBACK_PORCH_MSB                     5
      #define AVE_OUT_STATUS_HBACK_PORCH_LSB                     5
      #define AVE_OUT_STATUS_HFRONT_PORCH_BITS                   4:4
      #define AVE_OUT_STATUS_HFRONT_PORCH_SET                    0x00000010
      #define AVE_OUT_STATUS_HFRONT_PORCH_CLR                    0xffffffef
      #define AVE_OUT_STATUS_HFRONT_PORCH_MSB                    4
      #define AVE_OUT_STATUS_HFRONT_PORCH_LSB                    4
      #define AVE_OUT_STATUS_COEFF_ERROR_BITS                    2:2
      #define AVE_OUT_STATUS_COEFF_ERROR_SET                     0x00000004
      #define AVE_OUT_STATUS_COEFF_ERROR_CLR                     0xfffffffb
      #define AVE_OUT_STATUS_COEFF_ERROR_MSB                     2
      #define AVE_OUT_STATUS_COEFF_ERROR_LSB                     2
      #define AVE_OUT_STATUS_PXL_OUTPUT_ERROR_BITS               1:1
      #define AVE_OUT_STATUS_PXL_OUTPUT_ERROR_SET                0x00000002
      #define AVE_OUT_STATUS_PXL_OUTPUT_ERROR_CLR                0xfffffffd
      #define AVE_OUT_STATUS_PXL_OUTPUT_ERROR_MSB                1
      #define AVE_OUT_STATUS_PXL_OUTPUT_ERROR_LSB                1
      #define AVE_OUT_STATUS_PXL_FORMAT_ERROR_BITS               0:0
      #define AVE_OUT_STATUS_PXL_FORMAT_ERROR_SET                0x00000001
      #define AVE_OUT_STATUS_PXL_FORMAT_ERROR_CLR                0xfffffffe
      #define AVE_OUT_STATUS_PXL_FORMAT_ERROR_MSB                0
      #define AVE_OUT_STATUS_PXL_FORMAT_ERROR_LSB                0
#define AVE_OUT_OFFSET                                           HW_REGISTER_RW( 0x7e240008 ) 
   #define AVE_OUT_OFFSET_MASK                                   0x80ffffff
   #define AVE_OUT_OFFSET_WIDTH                                  32
   #define AVE_OUT_OFFSET_RESET                                  0x80109090
      #define AVE_OUT_OFFSET_EN_YCBCR_CLAMPING_BITS              31:31
      #define AVE_OUT_OFFSET_EN_YCBCR_CLAMPING_SET               0x80000000
      #define AVE_OUT_OFFSET_EN_YCBCR_CLAMPING_CLR               0x7fffffff
      #define AVE_OUT_OFFSET_EN_YCBCR_CLAMPING_MSB               31
      #define AVE_OUT_OFFSET_EN_YCBCR_CLAMPING_LSB               31
      #define AVE_OUT_OFFSET_RED_OFFSET_BITS                     23:16
      #define AVE_OUT_OFFSET_RED_OFFSET_SET                      0x00ff0000
      #define AVE_OUT_OFFSET_RED_OFFSET_CLR                      0xff00ffff
      #define AVE_OUT_OFFSET_RED_OFFSET_MSB                      23
      #define AVE_OUT_OFFSET_RED_OFFSET_LSB                      16
      #define AVE_OUT_OFFSET_GREEN_OFFSET_BITS                   15:8
      #define AVE_OUT_OFFSET_GREEN_OFFSET_SET                    0x0000ff00
      #define AVE_OUT_OFFSET_GREEN_OFFSET_CLR                    0xffff00ff
      #define AVE_OUT_OFFSET_GREEN_OFFSET_MSB                    15
      #define AVE_OUT_OFFSET_GREEN_OFFSET_LSB                    8
      #define AVE_OUT_OFFSET_BLUE_OFFSET_BITS                    7:0
      #define AVE_OUT_OFFSET_BLUE_OFFSET_SET                     0x000000ff
      #define AVE_OUT_OFFSET_BLUE_OFFSET_CLR                     0xffffff00
      #define AVE_OUT_OFFSET_BLUE_OFFSET_MSB                     7
      #define AVE_OUT_OFFSET_BLUE_OFFSET_LSB                     0
#define AVE_OUT_Y_COEFF                                          HW_REGISTER_RW( 0x7e24000c ) 
   #define AVE_OUT_Y_COEFF_MASK                                  0x3fffffff
   #define AVE_OUT_Y_COEFF_WIDTH                                 30
   #define AVE_OUT_Y_COEFF_RESET                                 0x0994b43a
      #define AVE_OUT_Y_COEFF_RED_COEFF_BITS                     29:20
      #define AVE_OUT_Y_COEFF_RED_COEFF_SET                      0x3ff00000
      #define AVE_OUT_Y_COEFF_RED_COEFF_CLR                      0xc00fffff
      #define AVE_OUT_Y_COEFF_RED_COEFF_MSB                      29
      #define AVE_OUT_Y_COEFF_RED_COEFF_LSB                      20
      #define AVE_OUT_Y_COEFF_GREEN_COEFF_BITS                   19:10
      #define AVE_OUT_Y_COEFF_GREEN_COEFF_SET                    0x000ffc00
      #define AVE_OUT_Y_COEFF_GREEN_COEFF_CLR                    0xfff003ff
      #define AVE_OUT_Y_COEFF_GREEN_COEFF_MSB                    19
      #define AVE_OUT_Y_COEFF_GREEN_COEFF_LSB                    10
      #define AVE_OUT_Y_COEFF_BLUE_COEFF_BITS                    9:0
      #define AVE_OUT_Y_COEFF_BLUE_COEFF_SET                     0x000003ff
      #define AVE_OUT_Y_COEFF_BLUE_COEFF_CLR                     0xfffffc00
      #define AVE_OUT_Y_COEFF_BLUE_COEFF_MSB                     9
      #define AVE_OUT_Y_COEFF_BLUE_COEFF_LSB                     0
#define AVE_OUT_CB_COEFF                                         HW_REGISTER_RW( 0x7e240010 ) 
   #define AVE_OUT_CB_COEFF_MASK                                 0x3fffffff
   #define AVE_OUT_CB_COEFF_WIDTH                                30
   #define AVE_OUT_CB_COEFF_RESET                                0x3a9d5900
      #define AVE_OUT_CB_COEFF_RED_COEFF_BITS                    29:20
      #define AVE_OUT_CB_COEFF_RED_COEFF_SET                     0x3ff00000
      #define AVE_OUT_CB_COEFF_RED_COEFF_CLR                     0xc00fffff
      #define AVE_OUT_CB_COEFF_RED_COEFF_MSB                     29
      #define AVE_OUT_CB_COEFF_RED_COEFF_LSB                     20
      #define AVE_OUT_CB_COEFF_GREEN_COEFF_BITS                  19:10
      #define AVE_OUT_CB_COEFF_GREEN_COEFF_SET                   0x000ffc00
      #define AVE_OUT_CB_COEFF_GREEN_COEFF_CLR                   0xfff003ff
      #define AVE_OUT_CB_COEFF_GREEN_COEFF_MSB                   19
      #define AVE_OUT_CB_COEFF_GREEN_COEFF_LSB                   10
      #define AVE_OUT_CB_COEFF_BLUE_COEFF_BITS                   9:0
      #define AVE_OUT_CB_COEFF_BLUE_COEFF_SET                    0x000003ff
      #define AVE_OUT_CB_COEFF_BLUE_COEFF_CLR                    0xfffffc00
      #define AVE_OUT_CB_COEFF_BLUE_COEFF_MSB                    9
      #define AVE_OUT_CB_COEFF_BLUE_COEFF_LSB                    0
#define AVE_OUT_CR_COEFF                                         HW_REGISTER_RW( 0x7e240014 ) 
   #define AVE_OUT_CR_COEFF_MASK                                 0x3fffffff
   #define AVE_OUT_CR_COEFF_WIDTH                                30
   #define AVE_OUT_CR_COEFF_RESET                                0x100ca7d6
      #define AVE_OUT_CR_COEFF_RED_COEFF_BITS                    29:20
      #define AVE_OUT_CR_COEFF_RED_COEFF_SET                     0x3ff00000
      #define AVE_OUT_CR_COEFF_RED_COEFF_CLR                     0xc00fffff
      #define AVE_OUT_CR_COEFF_RED_COEFF_MSB                     29
      #define AVE_OUT_CR_COEFF_RED_COEFF_LSB                     20
      #define AVE_OUT_CR_COEFF_GREEN_COEFF_BITS                  19:10
      #define AVE_OUT_CR_COEFF_GREEN_COEFF_SET                   0x000ffc00
      #define AVE_OUT_CR_COEFF_GREEN_COEFF_CLR                   0xfff003ff
      #define AVE_OUT_CR_COEFF_GREEN_COEFF_MSB                   19
      #define AVE_OUT_CR_COEFF_GREEN_COEFF_LSB                   10
      #define AVE_OUT_CR_COEFF_BLUE_COEFF_BITS                   9:0
      #define AVE_OUT_CR_COEFF_BLUE_COEFF_SET                    0x000003ff
      #define AVE_OUT_CR_COEFF_BLUE_COEFF_CLR                    0xfffffc00
      #define AVE_OUT_CR_COEFF_BLUE_COEFF_MSB                    9
      #define AVE_OUT_CR_COEFF_BLUE_COEFF_LSB                    0
#define AVE_OUT_BLOCK_ID                                         HW_REGISTER_RW( 0x7e240060 ) 
   #define AVE_OUT_BLOCK_ID_MASK                                 0xffffffff
   #define AVE_OUT_BLOCK_ID_WIDTH                                32
   #define AVE_OUT_BLOCK_ID_RESET                                0x61766538
