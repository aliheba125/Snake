package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class k60 extends gi0 {

    public static final class a {
        public static final a a = new a();
        public static final Integer b;

        static {
            Integer num;
            Object obj;
            Integer num2 = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
                if (num != null && num.intValue() > 0) {
                    num2 = num;
                }
                b = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            b = num2;
        }
    }

    private final boolean c(int i) {
        Integer num = a.b;
        return num == null || num.intValue() >= i;
    }

    @Override // androidx.appcompat.view.menu.gi0
    public void a(Throwable th, Throwable th2) {
        z50.e(th, "cause");
        z50.e(th2, "exception");
        if (c(19)) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }
}
