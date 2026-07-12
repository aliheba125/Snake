package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import io.flutter.embedding.engine.renderer.FlutterRenderer;

/* loaded from: classes.dex */
public class hu extends TextureView implements vo0 {
    public boolean a;
    public boolean b;
    public FlutterRenderer c;
    public Surface d;
    public final TextureView.SurfaceTextureListener e;

    public class a implements TextureView.SurfaceTextureListener {
        public a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            ea0.f("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureAvailable()");
            hu.this.a = true;
            if (hu.this.q()) {
                hu.this.m();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ea0.f("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureDestroyed()");
            hu.this.a = false;
            if (hu.this.q()) {
                hu.this.n();
            }
            if (hu.this.d == null) {
                return true;
            }
            hu.this.d.release();
            hu.this.d = null;
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            ea0.f("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureSizeChanged()");
            if (hu.this.q()) {
                hu.this.l(i, i2);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public hu(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i, int i2) {
        if (this.c == null) {
            throw new IllegalStateException("changeSurfaceSize() should only be called when flutterRenderer is non-null.");
        }
        ea0.f("FlutterTextureView", "Notifying FlutterRenderer that Android surface size has changed to " + i + " x " + i2);
        this.c.r(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.c == null || getSurfaceTexture() == null) {
            throw new IllegalStateException("connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null.");
        }
        Surface surface = this.d;
        if (surface != null) {
            surface.release();
            this.d = null;
        }
        Surface surface2 = new Surface(getSurfaceTexture());
        this.d = surface2;
        this.c.p(surface2, this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        FlutterRenderer flutterRenderer = this.c;
        if (flutterRenderer == null) {
            throw new IllegalStateException("disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null.");
        }
        flutterRenderer.q();
        Surface surface = this.d;
        if (surface != null) {
            surface.release();
            this.d = null;
        }
    }

    private void o() {
        setSurfaceTextureListener(this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return (this.c == null || this.b) ? false : true;
    }

    @Override // androidx.appcompat.view.menu.vo0
    public void a() {
        if (this.c == null) {
            ea0.g("FlutterTextureView", "detachFromRenderer() invoked when no FlutterRenderer was attached.");
            return;
        }
        if (getWindowToken() != null) {
            ea0.f("FlutterTextureView", "Disconnecting FlutterRenderer from Android surface.");
            n();
        }
        this.c = null;
    }

    @Override // androidx.appcompat.view.menu.vo0
    public void b() {
        if (this.c == null) {
            ea0.g("FlutterTextureView", "resume() invoked when no FlutterRenderer was attached.");
            return;
        }
        if (p()) {
            ea0.f("FlutterTextureView", "Surface is available for rendering. Connecting FlutterRenderer to Android surface.");
            m();
        }
        this.b = false;
    }

    @Override // androidx.appcompat.view.menu.vo0
    public void c(FlutterRenderer flutterRenderer) {
        ea0.f("FlutterTextureView", "Attaching to FlutterRenderer.");
        if (this.c != null) {
            ea0.f("FlutterTextureView", "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one.");
            this.c.q();
        }
        this.c = flutterRenderer;
        b();
    }

    @Override // androidx.appcompat.view.menu.vo0
    public void d() {
        if (this.c == null) {
            ea0.g("FlutterTextureView", "pause() invoked when no FlutterRenderer was attached.");
        } else {
            this.b = true;
        }
    }

    @Override // androidx.appcompat.view.menu.vo0
    public FlutterRenderer getAttachedRenderer() {
        return this.c;
    }

    public boolean p() {
        return this.a;
    }

    public void setRenderSurface(Surface surface) {
        this.d = surface;
    }

    public hu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        this.b = false;
        this.e = new a();
        o();
    }
}
