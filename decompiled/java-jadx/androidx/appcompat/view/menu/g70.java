package androidx.appcompat.view.menu;

import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class g70 implements ko {
    public static final tf0 e = new tf0() { // from class: androidx.appcompat.view.menu.d70
        @Override // androidx.appcompat.view.menu.tf0
        public final void a(Object obj, Object obj2) {
            g70.l(obj, (uf0) obj2);
        }
    };
    public static final w41 f = new w41() { // from class: androidx.appcompat.view.menu.e70
        @Override // androidx.appcompat.view.menu.w41
        public final void a(Object obj, Object obj2) {
            ((x41) obj2).c((String) obj);
        }
    };
    public static final w41 g = new w41() { // from class: androidx.appcompat.view.menu.f70
        @Override // androidx.appcompat.view.menu.w41
        public final void a(Object obj, Object obj2) {
            g70.n((Boolean) obj, (x41) obj2);
        }
    };
    public static final b h = new b(null);
    public final Map a = new HashMap();
    public final Map b = new HashMap();
    public tf0 c = e;
    public boolean d = false;

    public class a implements xi {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.xi
        public void a(Object obj, Writer writer) {
            h70 h70Var = new h70(writer, g70.this.a, g70.this.b, g70.this.c, g70.this.d);
            h70Var.h(obj, false);
            h70Var.p();
        }
    }

    public static final class b implements w41 {
        public static final DateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public b() {
        }

        public /* synthetic */ b(a aVar) {
            this();
        }

        @Override // androidx.appcompat.view.menu.w41
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Date date, x41 x41Var) {
            x41Var.c(a.format(date));
        }
    }

    public g70() {
        p(String.class, f);
        p(Boolean.class, g);
        p(Date.class, h);
    }

    public static /* synthetic */ void l(Object obj, uf0 uf0Var) {
        throw new no("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public static /* synthetic */ void n(Boolean bool, x41 x41Var) {
        x41Var.d(bool.booleanValue());
    }

    public xi i() {
        return new a();
    }

    public g70 j(bf bfVar) {
        bfVar.a(this);
        return this;
    }

    public g70 k(boolean z) {
        this.d = z;
        return this;
    }

    @Override // androidx.appcompat.view.menu.ko
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public g70 a(Class cls, tf0 tf0Var) {
        this.a.put(cls, tf0Var);
        this.b.remove(cls);
        return this;
    }

    public g70 p(Class cls, w41 w41Var) {
        this.b.put(cls, w41Var);
        this.a.remove(cls);
        return this;
    }
}
