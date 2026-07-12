package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.uc0;
import androidx.appcompat.view.menu.wc0;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class c8 implements uc0 {
    public Context a;
    public Context b;
    public mc0 c;
    public LayoutInflater d;
    public LayoutInflater e;
    public uc0.a f;
    public int g;
    public int h;
    public wc0 i;

    public c8(Context context, int i, int i2) {
        this.a = context;
        this.d = LayoutInflater.from(context);
        this.g = i;
        this.h = i2;
    }

    public void a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.i).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void b(mc0 mc0Var, boolean z) {
        uc0.a aVar = this.f;
        if (aVar != null) {
            aVar.b(mc0Var, z);
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void c(Context context, mc0 mc0Var) {
        this.b = context;
        this.e = LayoutInflater.from(context);
        this.c = mc0Var;
    }

    public abstract void d(qc0 qc0Var, wc0.a aVar);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.mc0] */
    @Override // androidx.appcompat.view.menu.uc0
    public boolean e(ay0 ay0Var) {
        uc0.a aVar = this.f;
        ay0 ay0Var2 = ay0Var;
        if (aVar == null) {
            return false;
        }
        if (ay0Var == null) {
            ay0Var2 = this.c;
        }
        return aVar.c(ay0Var2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.uc0
    public void f(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.i;
        if (viewGroup == null) {
            return;
        }
        mc0 mc0Var = this.c;
        int i = 0;
        if (mc0Var != null) {
            mc0Var.q();
            ArrayList A = this.c.A();
            int size = A.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                qc0 qc0Var = (qc0) A.get(i3);
                if (o(i2, qc0Var)) {
                    View childAt = viewGroup.getChildAt(i2);
                    qc0 itemData = childAt instanceof wc0.a ? ((wc0.a) childAt).getItemData() : null;
                    View n = n(qc0Var, childAt, viewGroup);
                    if (qc0Var != itemData) {
                        n.setPressed(false);
                        n.jumpDrawablesToCurrentState();
                    }
                    if (n != childAt) {
                        a(n, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!l(viewGroup, i)) {
                i++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean h(mc0 mc0Var, qc0 qc0Var) {
        return false;
    }

    public wc0.a i(ViewGroup viewGroup) {
        return (wc0.a) this.d.inflate(this.h, viewGroup, false);
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean j(mc0 mc0Var, qc0 qc0Var) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void k(uc0.a aVar) {
        this.f = aVar;
    }

    public boolean l(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    public uc0.a m() {
        return this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View n(qc0 qc0Var, View view, ViewGroup viewGroup) {
        wc0.a i = view instanceof wc0.a ? (wc0.a) view : i(viewGroup);
        d(qc0Var, i);
        return (View) i;
    }

    public abstract boolean o(int i, qc0 qc0Var);
}
