package jpattern.test;

import jpattern.*;
import java.util.ArrayList;

/**
Test breakx with a single character breakset
*/
public class Test14a extends Test
{
    public Test14a()
    {
        super("14a");
    }

    public boolean anchorMode() {return true;}

    public Pattern makePattern()
    {
	vars.put("result",new ArrayList());
        Pattern P1 = Pattern.BreakX(" ");
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

