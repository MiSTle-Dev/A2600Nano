//
// video_analyzer.v
//
// try to derive video parameters from hs/vs/de
// A2600 

module video_analyzer 
(
 // system interface
 input		  clk,
 input		  hs,
 input		  vs,
 input		  de,
 input		  ntscmode,
 input [1:0] screen,  // 0=std, 1=overscan, 2=wide
 output reg[1:0] mode, // 0=ntsc, 1=pal, 2=unused
 output reg	  vreset
);
   

// generate a reset signal in the upper left corner of active video used
// to synchonize the HDMI video generation to the Atari ST
reg vsD, hsD;
reg [11:0] hcnt;    // signal ranges 0..2047
reg [11:0] hcntL;
reg [9:0] vcnt;    // signal ranges 0..313
reg [9:0] vcntL;
reg changed;
reg [1:0] screenL;

always @(posedge clk) begin
    // ---- hsync processing -----
    hsD <= hs;
    mode <= {1'b0 , ~ntscmode}; // 0=ntsc, 1=pal, 2=unused

    // make sure screen changes in std/overscan/wide also trigger
    // a vreset
    if(screen != screenL) begin
       changed <= 1'b1;
       screenL <= screen;
    end

    // begin of hsync, falling edge
    if(!hs && hsD) begin
        // check if line length has changed during last cycle
        hcntL <= hcnt;
        if(hcntL != hcnt)
            changed <= 1'b1;

        hcnt <= 0;
    end else
        hcnt <= hcnt + 12'd1;

// A2600 262*2 > 524 312*2 > 624
// 100% standard compatible NTSC games display 262 lines per frame at 60Hz
// 100% standard compatible PAL games display 312 lines at 50Hz
    if(!hs && hsD) begin
        // ---- vsync processing -----
        vsD <= vs;
        // begin of vsync, falling edge
        if(!vs && vsD) begin
            // check if image height has changed during last cycle
            vcntL <= vcnt;
            if(vcntL != vcnt) begin
                changed <= 1'b1;
            end

            vcnt <= 0;
        end else
            vcnt <= vcnt + 10'd1;
    end

    // the reset signal is sent to the HDMI generator. On reset the
    // HDMI re-adjusts its counters to the start of the visible screen
    // area
   
   vreset <= 1'b0;
   // account for back porches to adjust image position within the HDMI frame
   // mode 0 = ntsc, 1 = pal, 2 = unused
   if( (hcnt == ((screen==2'd2)?10:(screen==2'd0)?80:28)  && vcnt == 20 && changed && mode == 2'd1) ||
       (hcnt == ((screen==2'd2)?80:(screen==2'd0)?160:100) && vcnt == 28 && changed && mode == 2'd0) ) begin
            vreset <= 1'b1;
            changed <= 1'b0;
        end
end
      // https://www.ataricompendium.com/faq/vcs_scanlines.html

endmodule