.class public Landroidx/appcompat/view/menu/mn1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/mn1$a;,
        Landroidx/appcompat/view/menu/mn1$b;
    }
.end annotation


# static fields
.field public static volatile j:Landroidx/appcompat/view/menu/mn1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/appcompat/view/menu/cc;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Landroidx/appcompat/view/menu/t3;

.field public final e:Ljava/util/List;

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public volatile i:Landroidx/appcompat/view/menu/fm1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/view/menu/mn1;->B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->a:Ljava/lang/String;

    :goto_1
    invoke-static {}, Landroidx/appcompat/view/menu/kj;->d()Landroidx/appcompat/view/menu/cc;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->b:Landroidx/appcompat/view/menu/cc;

    invoke-static {}, Landroidx/appcompat/view/menu/gl1;->a()Landroidx/appcompat/view/menu/il1;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/go1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/go1;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    sget v1, Landroidx/appcompat/view/menu/yl1;->a:I

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/il1;->a(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Landroidx/appcompat/view/menu/t3;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/t3;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->d:Landroidx/appcompat/view/menu/t3;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->e:Ljava/util/List;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mn1;->y(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mn1;->G()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mn1;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mn1;->g:Z

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/view/menu/mn1;->B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "fa"

    iput-object p2, p0, Landroidx/appcompat/view/menu/mn1;->h:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p3, p0, Landroidx/appcompat/view/menu/mn1;->h:Ljava/lang/String;

    :goto_3
    new-instance p2, Landroidx/appcompat/view/menu/tn1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/tn1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p2, Landroidx/appcompat/view/menu/mn1$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/mn1$b;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static bridge synthetic A(Landroidx/appcompat/view/menu/mn1;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/mn1;->g:Z

    return p0
.end method

.method public static bridge synthetic d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/mn1;->i:Landroidx/appcompat/view/menu/fm1;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroidx/appcompat/view/menu/mn1;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, v0}, Landroidx/appcompat/view/menu/mn1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/mn1;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/appcompat/view/menu/mn1;
    .locals 8

    invoke-static {p0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/mn1;->j:Landroidx/appcompat/view/menu/mn1;

    if-nez v0, :cond_1

    const-class v0, Landroidx/appcompat/view/menu/mn1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/mn1;->j:Landroidx/appcompat/view/menu/mn1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/mn1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/mn1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Landroidx/appcompat/view/menu/mn1;->j:Landroidx/appcompat/view/menu/mn1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Landroidx/appcompat/view/menu/mn1;->j:Landroidx/appcompat/view/menu/mn1;

    return-object p0
.end method

.method public static bridge synthetic m(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/fm1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mn1;->i:Landroidx/appcompat/view/menu/fm1;

    return-void
.end method

.method public static bridge synthetic n(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/mn1$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public static bridge synthetic o(Landroidx/appcompat/view/menu/mn1;Ljava/lang/Exception;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/mn1;->p(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method public static synthetic t(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mn1;->B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroidx/appcompat/view/menu/mn1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/mn1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/lw1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_id"

    new-instance v3, Landroidx/appcompat/view/menu/lw1;

    invoke-direct {v3, p0, v1}, Landroidx/appcompat/view/menu/lw1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/lw1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final B(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mn1;->G()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final C()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/no1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/no1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->v2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/gp1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/gp1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->v2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/ro1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/ro1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->v2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/po1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/po1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->v2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/lp1;

    invoke-direct {v1, p0, p1, v0}, Landroidx/appcompat/view/menu/lp1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->j(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/bm1;->k(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/to1;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/to1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/bm1;->u2(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/mn1;->b:Landroidx/appcompat/view/menu/cc;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Landroidx/appcompat/view/menu/mn1;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/mn1;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Landroid/content/Context;Z)Landroidx/appcompat/view/menu/fm1;
    .locals 1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/dm1;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/fm1;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/mn1;->p(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/vn1;

    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/view/menu/vn1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/bm1;->j(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/bm1;->k(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8

    new-instance v6, Landroidx/appcompat/view/menu/bm1;

    invoke-direct {v6}, Landroidx/appcompat/view/menu/bm1;-><init>()V

    new-instance v7, Landroidx/appcompat/view/menu/vo1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/vo1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;ZLandroidx/appcompat/view/menu/bm1;)V

    invoke-virtual {p0, v7}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v6, p1, p2}, Landroidx/appcompat/view/menu/bm1;->j(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final i(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    new-instance p1, Landroidx/appcompat/view/menu/jp1;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/jp1;-><init>(Landroidx/appcompat/view/menu/mn1;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/zn1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/zn1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/rn1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/rn1;-><init>(Landroidx/appcompat/view/menu/mn1;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/mn1$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Ljava/lang/Exception;ZZ)V
    .locals 7

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mn1;->g:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mn1;->g:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string v3, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/mn1;->i(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/xn1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/xn1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    new-instance v8, Landroidx/appcompat/view/menu/up1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/up1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p0, v8}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/xp1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/xp1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final u()Landroidx/appcompat/view/menu/t3;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1;->d:Landroidx/appcompat/view/menu/t3;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/lo1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/lo1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/mn1;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/jo1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/jo1;-><init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mn1;->l(Landroidx/appcompat/view/menu/mn1$a;)V

    return-void
.end method
