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
 output reg   pal,          // pal mode detected
 output reg   vreset
);
   

// generate a reset signal in the upper left corner of active video used
// to synchonize the HDMI video generation to the Atari ST
reg vsD, hsD;
reg [12:0] hcnt;    // signal ranges 0..2047
reg [12:0] hcntL;
reg [10:0] vcnt;    // signal ranges 0..625
reg [10:0] vcntL;
reg changed;

always @(posedge clk) begin
    // ---- hsync processing -----
    hsD <= hs;

    // begin of hsync, falling edge
    if(!hs && hsD) begin
        // check if line length has changed during last cycle
        hcntL <= hcnt;
        if(hcntL != hcnt)
            changed <= 1'b1;

        hcnt <= 0;
    end else
        hcnt <= hcnt + 13'd1;

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
                if(vcnt == 11'd524) begin
                    pal <= 1'b0; // NTSC
                end
                if(vcnt == 11'd624 ) begin
                    pal <= 1'b1; // PAL
                end
                changed <= 1'b1;
            end

            vcnt <= 0;
        end else
            vcnt <= vcnt + 11'd1;
    end

    // the reset signal is sent to the HDMI generator. On reset the
    // HDMI re-adjusts its counters to the start of the visible screen
    // area
   
   vreset <= 1'b0;
   // account for back porches to adjust image position within the
   // HDMI frame
   if( hcnt == 152 && vcnt == 28 && changed )
       begin
            vreset <= 1'b1;
            changed <= 1'b0;
        end
end
      //  https://www.ataricompendium.com/faq/vcs_scanlines.html

endmodule
