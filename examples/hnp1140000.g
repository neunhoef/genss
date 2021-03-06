LoadPackage("genss");
Print("HN on 1140000 points:\n\n");
gens := AtlasGenerators("HN",1).generators;
g := Group(gens);
ti := Runtime();
S := StabilizerChain(g);
ti2 := Runtime();
if Size(S) <> Size(CharacterTable("HN")) then Error("wrong size"); fi;
SetSize(g,Size(CharacterTable("HN")));
ti3 := Runtime();
Print("\n");
S := StabilizerChain(g); time;
ti4 := Runtime();
Print("\nStabChain:\n");
ViewObj(S);
Print("\n\nTime with random verification: ",ti2-ti,"\n");
Print("Time with known size: ",ti4-ti3,"\n");
