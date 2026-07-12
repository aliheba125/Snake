package androidx.appcompat.view.menu;

import android.content.Context;
import java.io.Closeable;

/* loaded from: classes.dex */
public abstract class l21 implements Closeable {

    public interface a {
        l21 a();

        a b(Context context);
    }

    public abstract gp a();

    public abstract k21 c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a().close();
    }
}
