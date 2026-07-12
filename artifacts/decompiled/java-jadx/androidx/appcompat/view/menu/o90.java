package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.lifecycle.r;

/* loaded from: classes.dex */
public class o90 extends n90 {
    public final a90 a;
    public final a b;

    public static class a extends y51 {
        public static final r.b f = new C0027a();
        public dw0 d = new dw0();
        public boolean e = false;

        /* renamed from: androidx.appcompat.view.menu.o90$a$a, reason: collision with other inner class name */
        public static class C0027a implements r.b {
            @Override // androidx.lifecycle.r.b
            public y51 a(Class cls) {
                return new a();
            }
        }

        public static a d(a61 a61Var) {
            return (a) new androidx.lifecycle.r(a61Var, f).a(a.class);
        }

        @Override // androidx.appcompat.view.menu.y51
        public void c() {
            super.c();
            if (this.d.j() <= 0) {
                this.d.b();
            } else {
                jy0.a(this.d.n(0));
                throw null;
            }
        }

        public void e() {
            if (this.d.j() <= 0) {
                return;
            }
            jy0.a(this.d.n(0));
            throw null;
        }
    }

    public o90(a90 a90Var, a61 a61Var) {
        this.a = a90Var;
        this.b = a.d(a61Var);
    }

    @Override // androidx.appcompat.view.menu.n90
    public void b() {
        this.b.e();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(PackageParser.PARSE_IS_PRIVILEGED);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        ij.a(this.a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
