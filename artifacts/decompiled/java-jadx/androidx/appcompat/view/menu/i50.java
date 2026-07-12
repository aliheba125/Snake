package androidx.appcompat.view.menu;

import android.view.View;
import androidx.appcompat.view.menu.l81;
import androidx.appcompat.view.menu.y81;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class i50 extends l81.b {
    public final View c;
    public int d;
    public int e;
    public final int[] f;

    public i50(View view) {
        super(0);
        this.f = new int[2];
        this.c = view;
    }

    @Override // androidx.appcompat.view.menu.l81.b
    public void b(l81 l81Var) {
        this.c.setTranslationY(0.0f);
    }

    @Override // androidx.appcompat.view.menu.l81.b
    public void c(l81 l81Var) {
        this.c.getLocationOnScreen(this.f);
        this.d = this.f[1];
    }

    @Override // androidx.appcompat.view.menu.l81.b
    public y81 d(y81 y81Var, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((l81) it.next()).c() & y81.m.c()) != 0) {
                this.c.setTranslationY(j2.c(this.e, 0, r0.b()));
                break;
            }
        }
        return y81Var;
    }

    @Override // androidx.appcompat.view.menu.l81.b
    public l81.a e(l81 l81Var, l81.a aVar) {
        this.c.getLocationOnScreen(this.f);
        int i = this.d - this.f[1];
        this.e = i;
        this.c.setTranslationY(i);
        return aVar;
    }
}
