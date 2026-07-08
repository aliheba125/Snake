package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.appcompat.view.menu.o11;
import androidx.appcompat.view.menu.qj0;
import androidx.appcompat.view.menu.su;
import androidx.appcompat.view.menu.we;
import androidx.appcompat.view.menu.wu;
import androidx.appcompat.view.menu.y21;
import androidx.emoji2.text.c;
import androidx.emoji2.text.e;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class e extends c.AbstractC0041c {
    public static final a k = new a();

    public static class a {
        public Typeface a(Context context, wu.b bVar) {
            return wu.a(context, null, new wu.b[]{bVar});
        }

        public wu.a b(Context context, su suVar) {
            return wu.b(context, null, suVar);
        }

        public void c(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    public static class b implements c.h {
        public final Context a;
        public final su b;
        public final a c;
        public final Object d = new Object();
        public Handler e;
        public Executor f;
        public ThreadPoolExecutor g;
        public c.i h;
        public ContentObserver i;
        public Runnable j;

        public b(Context context, su suVar, a aVar) {
            qj0.h(context, "Context cannot be null");
            qj0.h(suVar, "FontRequest cannot be null");
            this.a = context.getApplicationContext();
            this.b = suVar;
            this.c = aVar;
        }

        @Override // androidx.emoji2.text.c.h
        public void a(c.i iVar) {
            qj0.h(iVar, "LoaderCallback cannot be null");
            synchronized (this.d) {
                this.h = iVar;
            }
            d();
        }

        public final void b() {
            synchronized (this.d) {
                try {
                    this.h = null;
                    ContentObserver contentObserver = this.i;
                    if (contentObserver != null) {
                        this.c.c(this.a, contentObserver);
                        this.i = null;
                    }
                    Handler handler = this.e;
                    if (handler != null) {
                        handler.removeCallbacks(this.j);
                    }
                    this.e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f = null;
                    this.g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void c() {
            synchronized (this.d) {
                try {
                    if (this.h == null) {
                        return;
                    }
                    try {
                        wu.b e = e();
                        int b = e.b();
                        if (b == 2) {
                            synchronized (this.d) {
                            }
                        }
                        if (b != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + b + ")");
                        }
                        try {
                            o11.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Typeface a = this.c.a(this.a, e);
                            ByteBuffer e2 = y21.e(this.a, null, e.d());
                            if (e2 == null || a == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            f b2 = f.b(a, e2);
                            o11.b();
                            synchronized (this.d) {
                                try {
                                    c.i iVar = this.h;
                                    if (iVar != null) {
                                        iVar.b(b2);
                                    }
                                } finally {
                                }
                            }
                            b();
                        } catch (Throwable th) {
                            o11.b();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        synchronized (this.d) {
                            try {
                                c.i iVar2 = this.h;
                                if (iVar2 != null) {
                                    iVar2.a(th2);
                                }
                                b();
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        public void d() {
            synchronized (this.d) {
                try {
                    if (this.h == null) {
                        return;
                    }
                    if (this.f == null) {
                        ThreadPoolExecutor b = we.b("emojiCompat");
                        this.g = b;
                        this.f = b;
                    }
                    this.f.execute(new Runnable() { // from class: androidx.appcompat.view.menu.tu
                        @Override // java.lang.Runnable
                        public final void run() {
                            e.b.this.c();
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final wu.b e() {
            try {
                wu.a b = this.c.b(this.a, this.b);
                if (b.c() == 0) {
                    wu.b[] b2 = b.b();
                    if (b2 == null || b2.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return b2[0];
                }
                throw new RuntimeException("fetchFonts failed (" + b.c() + ")");
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }

        public void f(Executor executor) {
            synchronized (this.d) {
                this.f = executor;
            }
        }
    }

    public e(Context context, su suVar) {
        super(new b(context, suVar, k));
    }

    public e c(Executor executor) {
        ((b) a()).f(executor);
        return this;
    }
}
