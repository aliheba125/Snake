package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.np0;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public abstract class cm {
    public static final my0 a = new my0("UNDEFINED");
    public static final my0 b = new my0("REUSABLE_CLAIMED");

    public static final void b(xg xgVar, Object obj, fw fwVar) {
        if (!(xgVar instanceof bm)) {
            xgVar.n(obj);
            return;
        }
        bm bmVar = (bm) xgVar;
        Object c = rd.c(obj, fwVar);
        if (bmVar.p.D(bmVar.b())) {
            bmVar.r = c;
            bmVar.o = 1;
            bmVar.p.A(bmVar.b(), bmVar);
            return;
        }
        bp a2 = j01.a.a();
        if (a2.L()) {
            bmVar.r = c;
            bmVar.o = 1;
            a2.H(bmVar);
            return;
        }
        a2.J(true);
        try {
            q60 q60Var = (q60) bmVar.b().d(q60.d);
            if (q60Var == null || q60Var.c()) {
                xg xgVar2 = bmVar.q;
                Object obj2 = bmVar.s;
                kh b2 = xgVar2.b();
                Object c2 = i01.c(b2, obj2);
                if (c2 != i01.a) {
                    lh.f(xgVar2, b2, c2);
                }
                try {
                    bmVar.q.n(obj);
                    r31 r31Var = r31.a;
                } finally {
                    i01.a(b2, c2);
                }
            } else {
                CancellationException w = q60Var.w();
                bmVar.c(c, w);
                np0.a aVar = np0.m;
                bmVar.n(np0.a(op0.a(w)));
            }
            while (a2.N()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static /* synthetic */ void c(xg xgVar, Object obj, fw fwVar, int i, Object obj2) {
        if ((i & 2) != 0) {
            fwVar = null;
        }
        b(xgVar, obj, fwVar);
    }
}
