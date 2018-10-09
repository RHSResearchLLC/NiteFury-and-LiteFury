//------------------------------------------------------------------------
//--
//--  Filename      : xlconstant.h
//--
//--  Date          : 06/05/12
//--
//--  Description   : SYSTEMC description of a constant block.  This
//--                  block does not use a core.
//--
//------------------------------------------------------------------------


//------------------------------------------------------------------------
//--
//--  Module        : xlconstant
//--
//--  Architecture  : behavior
//--
//--  Description   : Top level SYSTEMC description of constant block
//--
//------------------------------------------------------------------------
#include "systemc.h"
template<int CONST_WIDTH,int CONST_VAL>
SC_MODULE(xlconstant_v1_1) {
  public:
  sc_out< sc_bv<CONST_WIDTH> > dout;
  void init() {
    dout.write(CONST_VAL);
  }
  SC_CTOR(xlconstant_v1_1) {
    SC_METHOD(init);  
  }
};
