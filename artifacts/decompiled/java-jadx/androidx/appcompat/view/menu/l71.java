package androidx.appcompat.view.menu;

import android.hardware.display.DisplayManager;
import android.view.Choreographer;
import io.flutter.embedding.engine.FlutterJNI;
import java.util.Objects;

/* loaded from: classes.dex */
public class l71 {
    public static l71 e;
    public static b f;
    public FlutterJNI b;
    public long a = -1;
    public c c = new c(0);
    public final FlutterJNI.b d = new a();

    public class a implements FlutterJNI.b {
        public a() {
        }

        @Override // io.flutter.embedding.engine.FlutterJNI.b
        public void a(long j) {
            Choreographer.getInstance().postFrameCallback(b(j));
        }

        public final Choreographer.FrameCallback b(long j) {
            if (l71.this.c == null) {
                return l71.this.new c(j);
            }
            l71.this.c.a = j;
            c cVar = l71.this.c;
            l71.this.c = null;
            return cVar;
        }
    }

    public class b implements DisplayManager.DisplayListener {
        public DisplayManager a;

        public b(DisplayManager displayManager) {
            this.a = displayManager;
        }

        public void a() {
            this.a.registerDisplayListener(this, null);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            if (i == 0) {
                float refreshRate = this.a.getDisplay(0).getRefreshRate();
                l71.this.a = (long) (1.0E9d / refreshRate);
                l71.this.b.setRefreshRateFPS(refreshRate);
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    public class c implements Choreographer.FrameCallback {
        public long a;

        public c(long j) {
            this.a = j;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            long nanoTime = System.nanoTime() - j;
            l71.this.b.onVsync(nanoTime < 0 ? 0L : nanoTime, l71.this.a, this.a);
            l71.this.c = this;
        }
    }

    public l71(FlutterJNI flutterJNI) {
        this.b = flutterJNI;
    }

    public static l71 f(DisplayManager displayManager, FlutterJNI flutterJNI) {
        if (e == null) {
            e = new l71(flutterJNI);
        }
        if (f == null) {
            l71 l71Var = e;
            Objects.requireNonNull(l71Var);
            b bVar = l71Var.new b(displayManager);
            f = bVar;
            bVar.a();
        }
        if (e.a == -1) {
            float refreshRate = displayManager.getDisplay(0).getRefreshRate();
            e.a = (long) (1.0E9d / refreshRate);
            flutterJNI.setRefreshRateFPS(refreshRate);
        }
        return e;
    }

    public void g() {
        this.b.setAsyncWaitForVsyncDelegate(this.d);
    }
}
