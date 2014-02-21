package jpattern.test;

import jpattern.*;

public class Test100 extends Test
{

    public Test100()
    {
        super("100");
    }

    public Pattern makePattern()
    {
        //jpattern.util.Debug.setDebug(true);
        Pattern P1 = Pattern.BreakX(" x");
        P1 = Pattern.IAssign(P1, Variable.create("Output"));
        Pattern P2 = Pattern.StringPattern(".");
        Pattern P = Pattern.Concat(P1, P2);
        if(false) {
            String sp = P.graphToString();
            System.err.println("Breakx: " + sp);
        }
        return P;
    }
}

