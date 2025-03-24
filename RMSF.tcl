# Original script by Esmael Haddadian and Kipp Johnson
# Modified by Bernard Xie for Lab 7
# February 12, 2016

# Open an output file and write the on the header the words "Residue" and "RMSF"
set outfile [open "rmsf_output.dat" w]
puts $outfile "Residue\tRMSF"

# LINE 3: Set the selection to be only the alpha-carbons on each residue
set sel [atomselect top "name CA"]

# LINE 4: Set $nframes to be the number of frames in the trajectory
set nframes [molinfo top get numframes]

set nframes2 [expr $nframes - 1]

# LINE 5: Set the variable $rmsfCA to be the RMSF for each C-alpha (CA) in your protein 
# In this command you need to specify the starting and final frame to be considered in 
# the calculations. HINT: This requires a measure command.  We have already defined all 
# the variables you need.

set rmsfCA [measure rmsf $sel first 0 last $nframes2]

# Print out the RMSF for each c-alpha using a for loop
#Line 6: 

for {set i 0} {$i < [llength $rmsfCA]} {incr i} {
    puts $outfile "$i\t[lindex $rmsfCA $i]"
}

close $outfile
