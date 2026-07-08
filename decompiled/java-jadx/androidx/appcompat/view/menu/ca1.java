package androidx.appcompat.view.menu;

import android.app.Activity;

/* loaded from: classes.dex */
public interface ca1 {
    public static final a a = a.a;

    public static final class a {
        public static final /* synthetic */ a a = new a();
        public static fw b = C0001a.n;

        /* renamed from: androidx.appcompat.view.menu.ca1$a$a, reason: collision with other inner class name */
        public static final class C0001a extends g80 implements fw {
            public static final C0001a n = new C0001a();

            public C0001a() {
                super(1);
            }

            @Override // androidx.appcompat.view.menu.fw
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ca1 i(ca1 ca1Var) {
                z50.e(ca1Var, "it");
                return ca1Var;
            }
        }

        public final ca1 a() {
            return (ca1) b.i(da1.b);
        }
    }

    static ca1 b() {
        return a.a();
    }

    ba1 a(Activity activity);
}
