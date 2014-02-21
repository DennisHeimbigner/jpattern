package jpattern.test;

import jpattern.*;
import java.util.ArrayList;

/**
Test breakx with a multiple character breakset
*/
public class Test14b extends Test
{
    public Test14b()
    {
        super("14b");
    }

    public boolean anchorMode() {return true;}

    public Pattern makePattern()
    {
	vars.put("result",new ArrayList());
        Pattern P1 = Pattern.BreakX(" t");
        P1 = Pattern.IAssign(P1, Variable.create("result"));
        Pattern P2 = Pattern.StringPattern(".");
        Pattern P = Pattern.Concat(P1, P2);
        if(false) {
            String sp = P.graphToString();
            System.err.println("Breakx: " + sp);
        }
        return P;
    }
}

