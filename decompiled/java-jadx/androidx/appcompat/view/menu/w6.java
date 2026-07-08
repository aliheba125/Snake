package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.l00;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class w6 extends l00.a implements i30 {
    public static final w6 l = new w6();

    public static w6 h() {
        return l;
    }

    @Override // androidx.appcompat.view.menu.l00
    public int P(y6 y6Var, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new so0());
        arrayList.add(new ci());
        j50 j50Var = y6Var.o;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int a = ((tp) it.next()).a(y6Var, j50Var, i);
            if (a != 0) {
                return a;
            }
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.l00
    public int b1(y6 y6Var, boolean z, int i) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(new ro0());
        }
        arrayList.add(new so0());
        j50 j50Var = y6Var.o;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int a = ((tp) it.next()).a(y6Var, j50Var, i);
            if (a != 0) {
                return a;
            }
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
    }

    @Override // androidx.appcompat.view.menu.l00
    public int j1(y6 y6Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bi());
        arrayList.add(new eh());
        j50 j50Var = y6Var.o;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int a = ((tp) it.next()).a(y6Var, j50Var, -1);
            if (a != 0) {
                return a;
            }
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.l00
    public int w(y6 y6Var, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ci());
        arrayList.add(new bi());
        arrayList.add(new eh());
        j50 j50Var = y6Var.o;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int a = ((tp) it.next()).a(y6Var, j50Var, i);
            if (a != 0) {
                return a;
            }
        }
        return 0;
    }
}
