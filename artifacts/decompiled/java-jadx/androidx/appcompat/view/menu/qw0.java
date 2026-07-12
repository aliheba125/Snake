package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.pw0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class qw0 implements ld0 {
    public static final qw0 b = new qw0(pw0.a);
    public final pw0 a;

    public qw0(pw0 pw0Var) {
        this.a = pw0Var;
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer a(Object obj) {
        pw0.a aVar = new pw0.a();
        aVar.write(0);
        this.a.p(aVar, obj);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer b(String str, String str2, Object obj, String str3) {
        pw0.a aVar = new pw0.a();
        aVar.write(1);
        this.a.p(aVar, str);
        this.a.p(aVar, str2);
        if (obj instanceof Throwable) {
            this.a.p(aVar, ea0.d((Throwable) obj));
        } else {
            this.a.p(aVar, obj);
        }
        this.a.p(aVar, str3);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer c(String str, String str2, Object obj) {
        pw0.a aVar = new pw0.a();
        aVar.write(1);
        this.a.p(aVar, str);
        this.a.p(aVar, str2);
        if (obj instanceof Throwable) {
            this.a.p(aVar, ea0.d((Throwable) obj));
        } else {
            this.a.p(aVar, obj);
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // androidx.appcompat.view.menu.ld0
    public id0 d(ByteBuffer byteBuffer) {
        byteBuffer.order(ByteOrder.nativeOrder());
        Object f = this.a.f(byteBuffer);
        Object f2 = this.a.f(byteBuffer);
        if (!(f instanceof String) || byteBuffer.hasRemaining()) {
            throw new IllegalArgumentException("Method call corrupted");
        }
        return new id0((String) f, f2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 == 1) goto L10;
     */
    @Override // androidx.appcompat.view.menu.ld0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object e(ByteBuffer byteBuffer) {
        byteBuffer.order(ByteOrder.nativeOrder());
        byte b2 = byteBuffer.get();
        if (b2 == 0) {
            Object f = this.a.f(byteBuffer);
            if (!byteBuffer.hasRemaining()) {
                return f;
            }
        }
        Object f2 = this.a.f(byteBuffer);
        Object f3 = this.a.f(byteBuffer);
        Object f4 = this.a.f(byteBuffer);
        if ((f2 instanceof String) && ((f3 == null || (f3 instanceof String)) && !byteBuffer.hasRemaining())) {
            throw new lt((String) f2, (String) f3, f4);
        }
        throw new IllegalArgumentException("Envelope corrupted");
    }

    @Override // androidx.appcompat.view.menu.ld0
    public ByteBuffer f(id0 id0Var) {
        pw0.a aVar = new pw0.a();
        this.a.p(aVar, id0Var.a);
        this.a.p(aVar, id0Var.b);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }
}
