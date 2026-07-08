package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.bl0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class bl0 {
    public final Map a;
    public final Map b;
    public final tf0 c;

    public static final class a implements ko {
        public static final tf0 d = new tf0() { // from class: androidx.appcompat.view.menu.al0
            @Override // androidx.appcompat.view.menu.tf0
            public final void a(Object obj, Object obj2) {
                bl0.a.e(obj, (uf0) obj2);
            }
        };
        public final Map a = new HashMap();
        public final Map b = new HashMap();
        public tf0 c = d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, uf0 uf0Var) {
            throw new no("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public bl0 c() {
            return new bl0(new HashMap(this.a), new HashMap(this.b), this.c);
        }

        public a d(bf bfVar) {
            bfVar.a(this);
            return this;
        }

        @Override // androidx.appcompat.view.menu.ko
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public a a(Class cls, tf0 tf0Var) {
            this.a.put(cls, tf0Var);
            this.b.remove(cls);
            return this;
        }
    }

    public bl0(Map map, Map map2, tf0 tf0Var) {
        this.a = map;
        this.b = map2;
        this.c = tf0Var;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) {
        new zk0(outputStream, this.a, this.b, this.c).q(obj);
    }

    public byte[] c(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
