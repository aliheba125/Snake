package androidx.lifecycle;

import androidx.appcompat.view.menu.a61;
import androidx.appcompat.view.menu.b61;
import androidx.appcompat.view.menu.gi;
import androidx.appcompat.view.menu.ie0;
import androidx.appcompat.view.menu.lj;
import androidx.appcompat.view.menu.y51;
import androidx.appcompat.view.menu.z50;
import androidx.appcompat.view.menu.z51;

/* loaded from: classes.dex */
public class r {
    public final a61 a;
    public final b b;
    public final gi c;

    public static class a extends c {
        public static final C0046a d = new C0046a(null);
        public static final gi.b e = C0046a.C0047a.a;

        /* renamed from: androidx.lifecycle.r$a$a, reason: collision with other inner class name */
        public static final class C0046a {

            /* renamed from: androidx.lifecycle.r$a$a$a, reason: collision with other inner class name */
            public static final class C0047a implements gi.b {
                public static final C0047a a = new C0047a();
            }

            public C0046a() {
            }

            public /* synthetic */ C0046a(lj ljVar) {
                this();
            }
        }
    }

    public interface b {
        public static final a a = a.a;

        public static final class a {
            public static final /* synthetic */ a a = new a();
        }

        default y51 a(Class cls) {
            z50.e(cls, "modelClass");
            throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
        }

        default y51 b(Class cls, gi giVar) {
            z50.e(cls, "modelClass");
            z50.e(giVar, "extras");
            return a(cls);
        }
    }

    public static class c implements b {
        public static final a b = new a(null);
        public static final gi.b c = a.C0048a.a;

        public static final class a {

            /* renamed from: androidx.lifecycle.r$c$a$a, reason: collision with other inner class name */
            public static final class C0048a implements gi.b {
                public static final C0048a a = new C0048a();
            }

            public a() {
            }

            public /* synthetic */ a(lj ljVar) {
                this();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r(a61 a61Var, b bVar) {
        this(a61Var, bVar, null, 4, null);
        z50.e(a61Var, "store");
        z50.e(bVar, "factory");
    }

    public y51 a(Class cls) {
        z50.e(cls, "modelClass");
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    public y51 b(String str, Class cls) {
        y51 a2;
        z50.e(str, "key");
        z50.e(cls, "modelClass");
        y51 b2 = this.a.b(str);
        if (cls.isInstance(b2)) {
            z50.c(b2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return b2;
        }
        ie0 ie0Var = new ie0(this.c);
        ie0Var.b(c.c, str);
        try {
            a2 = this.b.b(cls, ie0Var);
        } catch (AbstractMethodError unused) {
            a2 = this.b.a(cls);
        }
        this.a.c(str, a2);
        return a2;
    }

    public r(a61 a61Var, b bVar, gi giVar) {
        z50.e(a61Var, "store");
        z50.e(bVar, "factory");
        z50.e(giVar, "defaultCreationExtras");
        this.a = a61Var;
        this.b = bVar;
        this.c = giVar;
    }

    public /* synthetic */ r(a61 a61Var, b bVar, gi giVar, int i, lj ljVar) {
        this(a61Var, bVar, (i & 4) != 0 ? gi.a.b : giVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r(b61 b61Var, b bVar) {
        this(b61Var.c(), bVar, z51.a(b61Var));
        z50.e(b61Var, "owner");
        z50.e(bVar, "factory");
    }
}
