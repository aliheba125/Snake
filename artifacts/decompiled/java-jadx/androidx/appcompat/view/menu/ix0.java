package androidx.appcompat.view.menu;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class ix0 implements xc0 {
    public static final Charset a = Charset.forName("UTF8");
    public static final ix0 b = new ix0();

    @Override // androidx.appcompat.view.menu.xc0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public String b(ByteBuffer byteBuffer) {
        byte[] bArr;
        int i;
        if (byteBuffer == null) {
            return null;
        }
        int remaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            i = byteBuffer.arrayOffset();
        } else {
            bArr = new byte[remaining];
            byteBuffer.get(bArr);
            i = 0;
        }
        return new String(bArr, i, remaining, a);
    }

    @Override // androidx.appcompat.view.menu.xc0
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public ByteBuffer a(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(a);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bytes.length);
        allocateDirect.put(bytes);
        return allocateDirect;
    }
}
