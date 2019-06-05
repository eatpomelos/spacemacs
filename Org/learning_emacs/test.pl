while(<>){
    if($_ =~ s/-/=/g){
        print "find a -\n";
    }
}
