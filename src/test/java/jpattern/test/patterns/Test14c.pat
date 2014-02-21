package jpattern.test;

import jpattern.*;
import java.util.ArrayList;

/**
Test breakx with a character breakset taken from a variable
*/
public class Test14c extends Test
{
    public Test14c()
    {
        super("14c");
    }

    public boolean anchorMode() {return true;}

    public Pattern makePattern()
    {
        vars.put("Digit", "0123456789");
	vars.put("result",new ArrayList());
	vars.put("span",new ArrayList());
        Pattern P1 = Pattern.BreakX(Variable.create("Digit"));
        P1 = Pattern.IAssign(P1, Variable.create("result"));
        Pattern P2 = Pattern.Span(Variable.create("Digit"));
        P2 = Pattern.IAssign(P2, Variable.create("span"));
        Pattern PF = Pattern.Fail();
        Pattern PC1 = Pattern.Concat(P2, PF);
        Pattern P = Pattern.Concat(P1, PC1);
        if(false) {
            String sp = P.graphToString();
            System.err.println("Breakx: " + sp);
        }
        return P;
    }
}

