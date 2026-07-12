package androidx.appcompat.view.menu;

import android.view.KeyEvent;
import androidx.appcompat.view.menu.a80;
import androidx.appcompat.view.menu.y70;

/* loaded from: classes.dex */
public class r70 implements a80.d {
    public final y70 a;
    public final a80.b b = new a80.b();

    public r70(y70 y70Var) {
        this.a = y70Var;
    }

    @Override // androidx.appcompat.view.menu.a80.d
    public void a(KeyEvent keyEvent, final a80.d.a aVar) {
        int action = keyEvent.getAction();
        if (action == 0 || action == 1) {
            this.a.e(new y70.b(keyEvent, this.b.a(keyEvent.getUnicodeChar())), action != 0, new y70.a() { // from class: androidx.appcompat.view.menu.q70
                @Override // androidx.appcompat.view.menu.y70.a
                public final void a(boolean z) {
                    a80.d.a.this.a(z);
                }
            });
        } else {
            aVar.a(false);
        }
    }
}
