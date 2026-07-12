package androidx.appcompat.view.menu;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ud0 {

    public static final class b {
        public final String a;
        public final a b;
        public a c;
        public boolean d;
        public boolean e;

        public static class a {
            public String a;
            public Object b;
            public a c;

            public a() {
            }
        }

        public static boolean d(Object obj) {
            return obj instanceof CharSequence ? ((CharSequence) obj).length() == 0 : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof rg0 ? !((rg0) obj).c() : obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        public final a a() {
            a aVar = new a();
            this.c.c = aVar;
            this.c = aVar;
            return aVar;
        }

        public final b b(Object obj) {
            a().b = obj;
            return this;
        }

        public b c(Object obj) {
            return b(obj);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0033  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public String toString() {
            String str;
            boolean z = this.d;
            boolean z2 = this.e;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.a);
            sb.append('{');
            String str2 = "";
            for (a aVar = this.b.c; aVar != null; aVar = aVar.c) {
                Object obj = aVar.b;
                if (obj == null) {
                    if (z) {
                    }
                    sb.append(str2);
                    str = aVar.a;
                    if (str != null) {
                        sb.append(str);
                        sb.append('=');
                    }
                    if (obj == null && obj.getClass().isArray()) {
                        String deepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str2 = ", ";
                } else {
                    if (z2 && d(obj)) {
                    }
                    sb.append(str2);
                    str = aVar.a;
                    if (str != null) {
                    }
                    if (obj == null) {
                    }
                    sb.append(obj);
                    str2 = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        public b(String str) {
            a aVar = new a();
            this.b = aVar;
            this.c = aVar;
            this.d = false;
            this.e = false;
            this.a = (String) nj0.i(str);
        }
    }

    public static b a(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
