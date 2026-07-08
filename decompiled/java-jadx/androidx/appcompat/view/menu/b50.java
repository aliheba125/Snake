package androidx.appcompat.view.menu;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class b50 {
    public final b a;

    public static final class a implements b {
        public final InputContentInfo a;

        public a(Object obj) {
            this.a = (InputContentInfo) obj;
        }

        @Override // androidx.appcompat.view.menu.b50.b
        public ClipDescription a() {
            return this.a.getDescription();
        }

        @Override // androidx.appcompat.view.menu.b50.b
        public Object b() {
            return this.a;
        }

        @Override // androidx.appcompat.view.menu.b50.b
        public Uri c() {
            return this.a.getContentUri();
        }

        @Override // androidx.appcompat.view.menu.b50.b
        public void d() {
            this.a.requestPermission();
        }

        @Override // androidx.appcompat.view.menu.b50.b
        public Uri e() {
            return this.a.getLinkUri();
        }
    }

    public interface b {
        ClipDescription a();

        Object b();

        Uri c();

        void d();

        Uri e();
    }

    public b50(b bVar) {
        this.a = bVar;
    }

    public static b50 f(Object obj) {
        if (obj == null) {
            return null;
        }
        return new b50(new a(obj));
    }

    public Uri a() {
        return this.a.c();
    }

    public ClipDescription b() {
        return this.a.a();
    }

    public Uri c() {
        return this.a.e();
    }

    public void d() {
        this.a.d();
    }

    public Object e() {
        return this.a.b();
    }
}
