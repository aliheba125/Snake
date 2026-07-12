.class public Lio/flutter/embedding/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/o61$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a$b;
    }
.end annotation


# instance fields
.field public final a:Lio/flutter/embedding/engine/FlutterJNI;

.field public final b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field public final c:Landroidx/appcompat/view/menu/si;

.field public final d:Landroidx/appcompat/view/menu/jt;

.field public final e:Landroidx/appcompat/view/menu/t90;

.field public final f:Landroidx/appcompat/view/menu/z;

.field public final g:Landroidx/appcompat/view/menu/pk;

.field public final h:Landroidx/appcompat/view/menu/x80;

.field public final i:Landroidx/appcompat/view/menu/s90;

.field public final j:Landroidx/appcompat/view/menu/ae0;

.field public final k:Landroidx/appcompat/view/menu/qe0;

.field public final l:Landroidx/appcompat/view/menu/m7;

.field public final m:Landroidx/appcompat/view/menu/jp0;

.field public final n:Landroidx/appcompat/view/menu/fi0;

.field public final o:Landroidx/appcompat/view/menu/zj0;

.field public final p:Landroidx/appcompat/view/menu/qt0;

.field public final q:Landroidx/appcompat/view/menu/jw0;

.field public final r:Landroidx/appcompat/view/menu/ry0;

.field public final s:Landroidx/appcompat/view/menu/xz0;

.field public final t:Landroidx/appcompat/view/menu/bj0;

.field public final u:Ljava/util/Set;

.field public final v:Lio/flutter/embedding/engine/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/bj0;[Ljava/lang/String;ZZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/bj0;[Ljava/lang/String;ZZLio/flutter/embedding/engine/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/bj0;[Ljava/lang/String;ZZLio/flutter/embedding/engine/b;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    .line 4
    new-instance v0, Lio/flutter/embedding/engine/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/a$a;-><init>(Lio/flutter/embedding/engine/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object v1

    if-nez p3, :cond_0

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt;->d()Lio/flutter/embedding/engine/FlutterJNI$c;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .line 9
    new-instance v2, Landroidx/appcompat/view/menu/si;

    invoke-direct {v2, p3, v0}, Landroidx/appcompat/view/menu/si;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/a;->c:Landroidx/appcompat/view/menu/si;

    .line 10
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/si;->i()V

    .line 11
    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt;->a()Landroidx/appcompat/view/menu/qk;

    .line 12
    new-instance v0, Landroidx/appcompat/view/menu/z;

    invoke-direct {v0, v2, p3}, Landroidx/appcompat/view/menu/z;-><init>(Landroidx/appcompat/view/menu/si;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->f:Landroidx/appcompat/view/menu/z;

    .line 13
    new-instance v0, Landroidx/appcompat/view/menu/pk;

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/pk;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->g:Landroidx/appcompat/view/menu/pk;

    .line 14
    new-instance v0, Landroidx/appcompat/view/menu/x80;

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/x80;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->h:Landroidx/appcompat/view/menu/x80;

    .line 15
    new-instance v0, Landroidx/appcompat/view/menu/s90;

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/s90;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->i:Landroidx/appcompat/view/menu/s90;

    .line 16
    new-instance v3, Landroidx/appcompat/view/menu/ae0;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/ae0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->j:Landroidx/appcompat/view/menu/ae0;

    .line 17
    new-instance v3, Landroidx/appcompat/view/menu/qe0;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/qe0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->k:Landroidx/appcompat/view/menu/qe0;

    .line 18
    new-instance v3, Landroidx/appcompat/view/menu/m7;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/m7;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->l:Landroidx/appcompat/view/menu/m7;

    .line 19
    new-instance v3, Landroidx/appcompat/view/menu/fi0;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/fi0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->n:Landroidx/appcompat/view/menu/fi0;

    .line 20
    new-instance v3, Landroidx/appcompat/view/menu/zj0;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroidx/appcompat/view/menu/zj0;-><init>(Landroidx/appcompat/view/menu/si;Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->o:Landroidx/appcompat/view/menu/zj0;

    .line 21
    new-instance v3, Landroidx/appcompat/view/menu/jp0;

    invoke-direct {v3, v2, p7}, Landroidx/appcompat/view/menu/jp0;-><init>(Landroidx/appcompat/view/menu/si;Z)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->m:Landroidx/appcompat/view/menu/jp0;

    .line 22
    new-instance p7, Landroidx/appcompat/view/menu/qt0;

    invoke-direct {p7, v2}, Landroidx/appcompat/view/menu/qt0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->p:Landroidx/appcompat/view/menu/qt0;

    .line 23
    new-instance p7, Landroidx/appcompat/view/menu/jw0;

    invoke-direct {p7, v2}, Landroidx/appcompat/view/menu/jw0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->q:Landroidx/appcompat/view/menu/jw0;

    .line 24
    new-instance p7, Landroidx/appcompat/view/menu/ry0;

    invoke-direct {p7, v2}, Landroidx/appcompat/view/menu/ry0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->r:Landroidx/appcompat/view/menu/ry0;

    .line 25
    new-instance p7, Landroidx/appcompat/view/menu/xz0;

    invoke-direct {p7, v2}, Landroidx/appcompat/view/menu/xz0;-><init>(Landroidx/appcompat/view/menu/si;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->s:Landroidx/appcompat/view/menu/xz0;

    .line 26
    new-instance p7, Landroidx/appcompat/view/menu/t90;

    invoke-direct {p7, p1, v0}, Landroidx/appcompat/view/menu/t90;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/s90;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->e:Landroidx/appcompat/view/menu/t90;

    if-nez p2, :cond_1

    .line 27
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt;->c()Landroidx/appcompat/view/menu/st;

    move-result-object p2

    .line 28
    :cond_1
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/st;->k(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p2, p1, p5}, Landroidx/appcompat/view/menu/st;->f(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_2
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    .line 31
    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    .line 32
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Landroidx/appcompat/view/menu/bj0;)V

    .line 33
    invoke-virtual {p3, p7}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Landroidx/appcompat/view/menu/t90;)V

    .line 34
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt;->a()Landroidx/appcompat/view/menu/qk;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Landroidx/appcompat/view/menu/qk;)V

    .line 35
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_3

    .line 36
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->f()V

    .line 37
    :cond_3
    new-instance p5, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-object p4, p0, Lio/flutter/embedding/engine/a;->t:Landroidx/appcompat/view/menu/bj0;

    .line 38
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/bj0;->R()V

    .line 39
    new-instance p3, Landroidx/appcompat/view/menu/jt;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p0, p2, p8}, Landroidx/appcompat/view/menu/jt;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/b;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/a;->d:Landroidx/appcompat/view/menu/jt;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p7, p4}, Landroidx/appcompat/view/menu/t90;->d(Landroid/content/res/Configuration;)V

    if-eqz p6, :cond_4

    .line 42
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 43
    invoke-static {p0}, Landroidx/appcompat/view/menu/jx;->a(Lio/flutter/embedding/engine/a;)V

    .line 44
    :cond_4
    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/o61;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/o61$a;)V

    .line 45
    new-instance p1, Landroidx/appcompat/view/menu/ck0;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->r()Landroidx/appcompat/view/menu/zj0;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/ck0;-><init>(Landroidx/appcompat/view/menu/zj0;)V

    .line 46
    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/jt;->j(Landroidx/appcompat/view/menu/ut;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/embedding/engine/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(Lio/flutter/embedding/engine/a;)Landroidx/appcompat/view/menu/bj0;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->t:Landroidx/appcompat/view/menu/bj0;

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/embedding/engine/a;)Landroidx/appcompat/view/menu/jp0;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->m:Landroidx/appcompat/view/menu/jp0;

    return-object p0
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    return-void
.end method

.method public e(Lio/flutter/embedding/engine/a$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Landroidx/appcompat/view/menu/jt;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/jt;->l()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->t:Landroidx/appcompat/view/menu/bj0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bj0;->T()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Landroidx/appcompat/view/menu/si;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/si;->j()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Landroidx/appcompat/view/menu/qk;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    invoke-static {}, Landroidx/appcompat/view/menu/pt;->e()Landroidx/appcompat/view/menu/pt;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt;->a()Landroidx/appcompat/view/menu/qk;

    return-void
.end method

.method public h()Landroidx/appcompat/view/menu/z;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->f:Landroidx/appcompat/view/menu/z;

    return-object v0
.end method

.method public i()Landroidx/appcompat/view/menu/i1;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Landroidx/appcompat/view/menu/jt;

    return-object v0
.end method

.method public j()Landroidx/appcompat/view/menu/m7;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->l:Landroidx/appcompat/view/menu/m7;

    return-object v0
.end method

.method public k()Landroidx/appcompat/view/menu/si;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Landroidx/appcompat/view/menu/si;

    return-object v0
.end method

.method public l()Landroidx/appcompat/view/menu/x80;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->h:Landroidx/appcompat/view/menu/x80;

    return-object v0
.end method

.method public m()Landroidx/appcompat/view/menu/t90;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->e:Landroidx/appcompat/view/menu/t90;

    return-object v0
.end method

.method public n()Landroidx/appcompat/view/menu/ae0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->j:Landroidx/appcompat/view/menu/ae0;

    return-object v0
.end method

.method public o()Landroidx/appcompat/view/menu/qe0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->k:Landroidx/appcompat/view/menu/qe0;

    return-object v0
.end method

.method public p()Landroidx/appcompat/view/menu/fi0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->n:Landroidx/appcompat/view/menu/fi0;

    return-object v0
.end method

.method public q()Landroidx/appcompat/view/menu/bj0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->t:Landroidx/appcompat/view/menu/bj0;

    return-object v0
.end method

.method public r()Landroidx/appcompat/view/menu/zj0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->o:Landroidx/appcompat/view/menu/zj0;

    return-object v0
.end method

.method public s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public t()Landroidx/appcompat/view/menu/jp0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->m:Landroidx/appcompat/view/menu/jp0;

    return-object v0
.end method

.method public u()Landroidx/appcompat/view/menu/qt0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->p:Landroidx/appcompat/view/menu/qt0;

    return-object v0
.end method

.method public v()Landroidx/appcompat/view/menu/jw0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:Landroidx/appcompat/view/menu/jw0;

    return-object v0
.end method

.method public w()Landroidx/appcompat/view/menu/ry0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->r:Landroidx/appcompat/view/menu/ry0;

    return-object v0
.end method

.method public x()Landroidx/appcompat/view/menu/xz0;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->s:Landroidx/appcompat/view/menu/xz0;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method public z(Landroid/content/Context;Landroidx/appcompat/view/menu/si$b;Ljava/lang/String;Ljava/util/List;Landroidx/appcompat/view/menu/bj0;ZZ)Lio/flutter/embedding/engine/a;
    .locals 12

    move-object v0, p2

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, v0, Landroidx/appcompat/view/menu/si$b;->c:Ljava/lang/String;

    iget-object v0, v0, Landroidx/appcompat/view/menu/si$b;->b:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v2, v3, v0, p3, v5}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v7

    new-instance v0, Lio/flutter/embedding/engine/a;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/st;Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/bj0;[Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
