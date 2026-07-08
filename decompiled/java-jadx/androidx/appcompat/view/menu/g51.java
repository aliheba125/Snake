package androidx.appcompat.view.menu;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class g51 implements Comparable {
    public static final a r = new a(null);
    public static final g51 s = new g51(0, 0, 0, "");
    public static final g51 t = new g51(0, 1, 0, "");
    public static final g51 u;
    public static final g51 v;
    public final int m;
    public final int n;
    public final int o;
    public final String p;
    public final i80 q;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final g51 a() {
            return g51.t;
        }

        public final g51 b(String str) {
            boolean d;
            String group;
            if (str != null) {
                d = wx0.d(str);
                if (!d) {
                    Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
                    if (matcher.matches() && (group = matcher.group(1)) != null) {
                        int parseInt = Integer.parseInt(group);
                        String group2 = matcher.group(2);
                        if (group2 != null) {
                            int parseInt2 = Integer.parseInt(group2);
                            String group3 = matcher.group(3);
                            if (group3 != null) {
                                int parseInt3 = Integer.parseInt(group3);
                                String group4 = matcher.group(4) != null ? matcher.group(4) : "";
                                z50.d(group4, "description");
                                return new g51(parseInt, parseInt2, parseInt3, group4, null);
                            }
                        }
                    }
                }
            }
            return null;
        }
    }

    public static final class b extends g80 implements dw {
        public b() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BigInteger d() {
            return BigInteger.valueOf(g51.this.h()).shiftLeft(32).or(BigInteger.valueOf(g51.this.i())).shiftLeft(32).or(BigInteger.valueOf(g51.this.j()));
        }
    }

    static {
        g51 g51Var = new g51(1, 0, 0, "");
        u = g51Var;
        v = g51Var;
    }

    public /* synthetic */ g51(int i, int i2, int i3, String str, lj ljVar) {
        this(i, i2, i3, str);
    }

    @Override // java.lang.Comparable
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public int compareTo(g51 g51Var) {
        z50.e(g51Var, "other");
        return g().compareTo(g51Var.g());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g51)) {
            return false;
        }
        g51 g51Var = (g51) obj;
        return this.m == g51Var.m && this.n == g51Var.n && this.o == g51Var.o;
    }

    public final BigInteger g() {
        Object value = this.q.getValue();
        z50.d(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    public final int h() {
        return this.m;
    }

    public int hashCode() {
        return ((((527 + this.m) * 31) + this.n) * 31) + this.o;
    }

    public final int i() {
        return this.n;
    }

    public final int j() {
        return this.o;
    }

    public String toString() {
        boolean d;
        String str;
        d = wx0.d(this.p);
        if (!d) {
            str = '-' + this.p;
        } else {
            str = "";
        }
        return this.m + '.' + this.n + '.' + this.o + str;
    }

    public g51(int i, int i2, int i3, String str) {
        i80 a2;
        this.m = i;
        this.n = i2;
        this.o = i3;
        this.p = str;
        a2 = m80.a(new b());
        this.q = a2;
    }
}
