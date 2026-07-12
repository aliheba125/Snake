.class public Landroidx/appcompat/view/menu/cx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/iz1;


# static fields
.field public static volatile I:Landroidx/appcompat/view/menu/cx1;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public volatile D:Z

.field public E:I

.field public F:I

.field public G:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final H:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Landroidx/appcompat/view/menu/mf1;

.field public final g:Landroidx/appcompat/view/menu/qf1;

.field public final h:Landroidx/appcompat/view/menu/tu1;

.field public final i:Landroidx/appcompat/view/menu/pt1;

.field public final j:Landroidx/appcompat/view/menu/jw1;

.field public final k:Landroidx/appcompat/view/menu/y62;

.field public final l:Landroidx/appcompat/view/menu/x92;

.field public final m:Landroidx/appcompat/view/menu/mt1;

.field public final n:Landroidx/appcompat/view/menu/cc;

.field public final o:Landroidx/appcompat/view/menu/r32;

.field public final p:Landroidx/appcompat/view/menu/d02;

.field public final q:Landroidx/appcompat/view/menu/oh1;

.field public final r:Landroidx/appcompat/view/menu/h32;

.field public final s:Ljava/lang/String;

.field public t:Landroidx/appcompat/view/menu/ft1;

.field public u:Landroidx/appcompat/view/menu/h42;

.field public v:Landroidx/appcompat/view/menu/ci1;

.field public w:Landroidx/appcompat/view/menu/zs1;

.field public x:Z

.field public y:Ljava/lang/Boolean;

.field public z:J


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/yz1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/cx1;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/cx1;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/appcompat/view/menu/yz1;->a:Landroid/content/Context;

    new-instance v2, Landroidx/appcompat/view/menu/mf1;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/mf1;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->f:Landroidx/appcompat/view/menu/mf1;

    sput-object v2, Landroidx/appcompat/view/menu/as1;->a:Landroidx/appcompat/view/menu/mf1;

    iget-object v1, p1, Landroidx/appcompat/view/menu/yz1;->a:Landroid/content/Context;

    iput-object v1, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    iget-object v2, p1, Landroidx/appcompat/view/menu/yz1;->b:Ljava/lang/String;

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->b:Ljava/lang/String;

    iget-object v2, p1, Landroidx/appcompat/view/menu/yz1;->c:Ljava/lang/String;

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->c:Ljava/lang/String;

    iget-object v2, p1, Landroidx/appcompat/view/menu/yz1;->d:Ljava/lang/String;

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->d:Ljava/lang/String;

    iget-boolean v2, p1, Landroidx/appcompat/view/menu/yz1;->h:Z

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/cx1;->e:Z

    iget-object v2, p1, Landroidx/appcompat/view/menu/yz1;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    iget-object v2, p1, Landroidx/appcompat/view/menu/yz1;->j:Ljava/lang/String;

    iput-object v2, p0, Landroidx/appcompat/view/menu/cx1;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/cx1;->D:Z

    iget-object v3, p1, Landroidx/appcompat/view/menu/yz1;->g:Landroidx/appcompat/view/menu/jn1;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Landroidx/appcompat/view/menu/cx1;->B:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->C:Ljava/lang/Boolean;

    :cond_1
    invoke-static {v1}, Landroidx/appcompat/view/menu/ov1;->l(Landroid/content/Context;)V

    invoke-static {}, Landroidx/appcompat/view/menu/kj;->d()Landroidx/appcompat/view/menu/cc;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->n:Landroidx/appcompat/view/menu/cc;

    iget-object v4, p1, Landroidx/appcompat/view/menu/yz1;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    new-instance v3, Landroidx/appcompat/view/menu/qf1;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/qf1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    new-instance v3, Landroidx/appcompat/view/menu/tu1;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/tu1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->h:Landroidx/appcompat/view/menu/tu1;

    new-instance v3, Landroidx/appcompat/view/menu/pt1;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/pt1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->i:Landroidx/appcompat/view/menu/pt1;

    new-instance v3, Landroidx/appcompat/view/menu/x92;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/x92;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->l:Landroidx/appcompat/view/menu/x92;

    new-instance v3, Landroidx/appcompat/view/menu/wz1;

    invoke-direct {v3, p1, p0}, Landroidx/appcompat/view/menu/wz1;-><init>(Landroidx/appcompat/view/menu/yz1;Landroidx/appcompat/view/menu/cx1;)V

    new-instance v4, Landroidx/appcompat/view/menu/mt1;

    invoke-direct {v4, v3}, Landroidx/appcompat/view/menu/mt1;-><init>(Landroidx/appcompat/view/menu/lt1;)V

    iput-object v4, p0, Landroidx/appcompat/view/menu/cx1;->m:Landroidx/appcompat/view/menu/mt1;

    new-instance v3, Landroidx/appcompat/view/menu/oh1;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/oh1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->q:Landroidx/appcompat/view/menu/oh1;

    new-instance v3, Landroidx/appcompat/view/menu/r32;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/r32;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->o:Landroidx/appcompat/view/menu/r32;

    new-instance v3, Landroidx/appcompat/view/menu/d02;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/d02;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->p:Landroidx/appcompat/view/menu/d02;

    new-instance v3, Landroidx/appcompat/view/menu/y62;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/y62;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->k:Landroidx/appcompat/view/menu/y62;

    new-instance v3, Landroidx/appcompat/view/menu/h32;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/h32;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->r:Landroidx/appcompat/view/menu/h32;

    new-instance v3, Landroidx/appcompat/view/menu/jw1;

    invoke-direct {v3, p0}, Landroidx/appcompat/view/menu/jw1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/cx1;->j:Landroidx/appcompat/view/menu/jw1;

    iget-object v4, p1, Landroidx/appcompat/view/menu/yz1;->g:Landroidx/appcompat/view/menu/jn1;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Landroidx/appcompat/view/menu/jn1;->n:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    move v0, v2

    :cond_3
    xor-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-nez v4, :cond_4

    new-instance v4, Landroidx/appcompat/view/menu/r22;

    invoke-direct {v4, v1}, Landroidx/appcompat/view/menu/r22;-><init>(Landroidx/appcompat/view/menu/d02;)V

    iput-object v4, v1, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/ex1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/ex1;-><init>(Landroidx/appcompat/view/menu/cx1;Landroidx/appcompat/view/menu/yz1;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/view/menu/jn1;Ljava/lang/Long;)Landroidx/appcompat/view/menu/cx1;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/jn1;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/jn1;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/jn1;

    iget-wide v2, p1, Landroidx/appcompat/view/menu/jn1;->m:J

    iget-wide v4, p1, Landroidx/appcompat/view/menu/jn1;->n:J

    iget-boolean v6, p1, Landroidx/appcompat/view/menu/jn1;->o:Z

    iget-object v7, p1, Landroidx/appcompat/view/menu/jn1;->p:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/appcompat/view/menu/jn1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    if-nez v0, :cond_3

    const-class v0, Landroidx/appcompat/view/menu/cx1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/appcompat/view/menu/yz1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/appcompat/view/menu/yz1;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/jn1;Ljava/lang/Long;)V

    new-instance p0, Landroidx/appcompat/view/menu/cx1;

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/cx1;-><init>(Landroidx/appcompat/view/menu/yz1;)V

    sput-object p0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    invoke-static {p0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cx1;->m(Z)V

    :cond_4
    :goto_2
    sget-object p0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    invoke-static {p0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Landroidx/appcompat/view/menu/cx1;->I:Landroidx/appcompat/view/menu/cx1;

    return-object p0
.end method

.method public static f(Landroidx/appcompat/view/menu/cp1;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/cx1;Landroidx/appcompat/view/menu/yz1;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    new-instance v0, Landroidx/appcompat/view/menu/ci1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ci1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dz1;->p()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cx1;->v:Landroidx/appcompat/view/menu/ci1;

    new-instance v0, Landroidx/appcompat/view/menu/zs1;

    iget-wide v1, p1, Landroidx/appcompat/view/menu/yz1;->f:J

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/zs1;-><init>(Landroidx/appcompat/view/menu/cx1;J)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/cx1;->w:Landroidx/appcompat/view/menu/zs1;

    new-instance p1, Landroidx/appcompat/view/menu/ft1;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/ft1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cx1;->t:Landroidx/appcompat/view/menu/ft1;

    new-instance p1, Landroidx/appcompat/view/menu/h42;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/h42;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cp1;->w()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cx1;->u:Landroidx/appcompat/view/menu/h42;

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->l:Landroidx/appcompat/view/menu/x92;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/dz1;->q()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->h:Landroidx/appcompat/view/menu/tu1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/dz1;->q()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->w:Landroidx/appcompat/view/menu/zs1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cp1;->x()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-wide/32 v1, 0x14051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->F()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x92;->F0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget p1, p0, Landroidx/appcompat/view/menu/cx1;->E:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/view/menu/cx1;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/cx1;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/cx1;->x:Z

    return-void
.end method

.method public static i(Landroidx/appcompat/view/menu/dz1;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Landroidx/appcompat/view/menu/fz1;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->v:Landroidx/appcompat/view/menu/ci1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->i(Landroidx/appcompat/view/menu/dz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->v:Landroidx/appcompat/view/menu/ci1;

    return-object v0
.end method

.method public final B()Landroidx/appcompat/view/menu/zs1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->w:Landroidx/appcompat/view/menu/zs1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->w:Landroidx/appcompat/view/menu/zs1;

    return-object v0
.end method

.method public final C()Landroidx/appcompat/view/menu/ft1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->t:Landroidx/appcompat/view/menu/ft1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->t:Landroidx/appcompat/view/menu/ft1;

    return-object v0
.end method

.method public final D()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->m:Landroidx/appcompat/view/menu/mt1;

    return-object v0
.end method

.method public final E()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->i:Landroidx/appcompat/view/menu/pt1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dz1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->i:Landroidx/appcompat/view/menu/pt1;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final F()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->h:Landroidx/appcompat/view/menu/tu1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->j(Landroidx/appcompat/view/menu/fz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->h:Landroidx/appcompat/view/menu/tu1;

    return-object v0
.end method

.method public final G()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->j:Landroidx/appcompat/view/menu/jw1;

    return-object v0
.end method

.method public final H()Landroidx/appcompat/view/menu/d02;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->p:Landroidx/appcompat/view/menu/d02;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->p:Landroidx/appcompat/view/menu/d02;

    return-object v0
.end method

.method public final I()Landroidx/appcompat/view/menu/r32;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->o:Landroidx/appcompat/view/menu/r32;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->o:Landroidx/appcompat/view/menu/r32;

    return-object v0
.end method

.method public final J()Landroidx/appcompat/view/menu/h42;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->u:Landroidx/appcompat/view/menu/h42;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->u:Landroidx/appcompat/view/menu/h42;

    return-object v0
.end method

.method public final K()Landroidx/appcompat/view/menu/y62;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->k:Landroidx/appcompat/view/menu/y62;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->f(Landroidx/appcompat/view/menu/cp1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->k:Landroidx/appcompat/view/menu/y62;

    return-object v0
.end method

.method public final L()Landroidx/appcompat/view/menu/x92;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->l:Landroidx/appcompat/view/menu/x92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->j(Landroidx/appcompat/view/menu/fz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->l:Landroidx/appcompat/view/menu/x92;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->n:Landroidx/appcompat/view/menu/cc;

    return-object v0
.end method

.method public final d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->f:Landroidx/appcompat/view/menu/mf1;

    return-object v0
.end method

.method public final e(Landroidx/appcompat/view/menu/jn1;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v1, Landroidx/appcompat/view/menu/si1;->M0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroidx/appcompat/view/menu/jc2;

    iget-object v3, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-direct {v2, v3}, Landroidx/appcompat/view/menu/jc2;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v1, v4}, Landroidx/appcompat/view/menu/lg;->l(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Registered app receiver"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->J()Landroidx/appcompat/view/menu/lz1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    const-string v3, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    const-string v4, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, -0xa

    const/4 v5, 0x0

    const/16 v6, 0x1e

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/appcompat/view/menu/tu1;->x(I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v1, Landroidx/appcompat/view/menu/lz1;

    invoke-direct {v1, v2, v3, v4}, Landroidx/appcompat/view/menu/lz1;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/lz1;

    invoke-direct {v2, v5, v5, v4}, Landroidx/appcompat/view/menu/lz1;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-wide v7, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-virtual {v1, v2, v7, v8}, Landroidx/appcompat/view/menu/d02;->K(Landroidx/appcompat/view/menu/lz1;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/tu1;->x(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    invoke-static {v1, v6}, Landroidx/appcompat/view/menu/lz1;->c(Landroid/os/Bundle;I)Landroidx/appcompat/view/menu/lz1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    iget-wide v2, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/d02;->K(Landroidx/appcompat/view/menu/lz1;J)V

    move-object v0, v1

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/d02;->J(Landroidx/appcompat/view/menu/lz1;)V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v2, Landroidx/appcompat/view/menu/si1;->S0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->I()Landroidx/appcompat/view/menu/fh1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fh1;->a()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    const-string v3, "google_analytics_default_allow_ad_user_data"

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v4, v0}, Landroidx/appcompat/view/menu/lz1;->k(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/fh1;

    invoke-direct {v0, v2, v4}, Landroidx/appcompat/view/menu/fh1;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/d02;->I(Landroidx/appcompat/view/menu/fh1;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    if-ne v0, v6, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/fh1;

    invoke-direct {v0, v5, v4}, Landroidx/appcompat/view/menu/fh1;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/d02;->I(Landroidx/appcompat/view/menu/fh1;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    iget-object v2, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    invoke-static {v6, v0}, Landroidx/appcompat/view/menu/lz1;->k(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    invoke-static {v0, v6}, Landroidx/appcompat/view/menu/fh1;->b(Landroid/os/Bundle;I)Landroidx/appcompat/view/menu/fh1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fh1;->j()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/d02;->I(Landroidx/appcompat/view/menu/fh1;)V

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->m:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gv1;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p1, Landroidx/appcompat/view/menu/jn1;->s:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/appcompat/view/menu/fh1;->d(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v2

    iget-object p1, p1, Landroidx/appcompat/view/menu/jn1;->q:Ljava/lang/String;

    const-string v3, "allow_personalized_ads"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v0, v1}, Landroidx/appcompat/view/menu/d02;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->e:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    iget-wide v2, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Persisting first open"

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->e:Landroidx/appcompat/view/menu/dv1;

    iget-wide v2, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/d02;->n:Landroidx/appcompat/view/menu/cf2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cf2;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->s()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/x92;->E0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/x92;->E0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ah0;->f()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qf1;->S()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/menu/x92;->c0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/x92;->d0(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tu1;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/x92;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tu1;->Q()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->C()Landroidx/appcompat/view/menu/ft1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ft1;->H()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->u:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h42;->Z()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->u:Landroidx/appcompat/view/menu/h42;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h42;->Y()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->e:Landroidx/appcompat/view/menu/dv1;

    iget-wide v0, p0, Landroidx/appcompat/view/menu/cx1;->H:J

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->g:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/gv1;->b(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/tu1;->G(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/tu1;->D(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tu1;->J()Landroidx/appcompat/view/menu/lz1;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/lz1;->l(Landroidx/appcompat/view/menu/lz1$a;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->g:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/gv1;->b(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->g:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gv1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/d02;->T(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ta2;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v0, Landroidx/appcompat/view/menu/si1;->p0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/x92;->W0()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->v:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gv1;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->v:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/gv1;->b(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_17
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->B()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->R()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/tu1;->E(Z)V

    :cond_18
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d02;->n0()V

    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->K()Landroidx/appcompat/view/menu/y62;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/y62;->e:Landroidx/appcompat/view/menu/u72;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/u72;->a()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->J()Landroidx/appcompat/view/menu/h42;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h42;->Q(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->J()Landroidx/appcompat/view/menu/h42;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->y:Landroidx/appcompat/view/menu/xu1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/xu1;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h42;->C(Landroid/os/Bundle;)V

    :cond_1a
    :goto_3
    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v0, Landroidx/appcompat/view/menu/si1;->M0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/x92;->V0()Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/appcompat/view/menu/bx1;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/bx1;-><init>(Landroidx/appcompat/view/menu/d02;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/tu1;->o:Landroidx/appcompat/view/menu/zu1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    return-void
.end method

.method public final h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->j:Landroidx/appcompat/view/menu/jw1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->i(Landroidx/appcompat/view/menu/dz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->j:Landroidx/appcompat/view/menu/jw1;

    return-object v0
.end method

.method public final synthetic k(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 5

    const-string p1, "gbraid"

    const-string p5, "gclid"

    const-string v0, ""

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p2, v1, :cond_0

    const/16 v1, 0x130

    if-ne p2, v1, :cond_8

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/tu1;->t:Landroidx/appcompat/view/menu/zu1;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    if-eqz p4, :cond_7

    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/nb2;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v4, Landroidx/appcompat/view/menu/si1;->Z0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/x92;->K0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    invoke-virtual {p1, p3, p4, v0, p2}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/x92;->K0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p3, p5, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    invoke-virtual {p3, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/cx1;->p:Landroidx/appcompat/view/menu/d02;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Landroidx/appcompat/view/menu/d02;->z0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1, p2, v1, v2}, Landroidx/appcompat/view/menu/x92;->h0(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p4, p2, p3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->i:Landroidx/appcompat/view/menu/pt1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->i(Landroidx/appcompat/view/menu/dz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->i:Landroidx/appcompat/view/menu/pt1;

    return-object v0
.end method

.method public final m(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public final n()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/cx1;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/cx1;->E:I

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->x()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/cx1;->D:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/cx1;->x:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/appcompat/view/menu/cx1;->z:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->n:Landroidx/appcompat/view/menu/cc;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/appcompat/view/menu/cx1;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->n:Landroidx/appcompat/view/menu/cc;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/cx1;->z:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/x92;->E0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/x92;->E0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ah0;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/x92;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/x92;->d0(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/cx1;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/zs1;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/x92;->j0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/cx1;->y:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/cx1;->e:Z

    return v0
.end method

.method public final u()Z
    .locals 12

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->v()Landroidx/appcompat/view/menu/h32;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->i(Landroidx/appcompat/view/menu/dz1;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/tu1;->u(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qf1;->P()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->v()Landroidx/appcompat/view/menu/h32;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/h32;->w()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v9

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    sget-object v4, Landroidx/appcompat/view/menu/si1;->U0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h42;->V()Landroidx/appcompat/view/menu/hg1;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/appcompat/view/menu/hg1;->m:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget v0, p0, Landroidx/appcompat/view/menu/cx1;->F:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/cx1;->F:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    move v9, v4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    if-eqz v9, :cond_4

    const-string v1, "Retrying."

    goto :goto_1

    :cond_4
    const-string v1, "Skipping."

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve DMA consent from the service, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " retryCount"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/cx1;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v9

    :cond_5
    const/16 v5, 0x64

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/lz1;->c(Landroid/os/Bundle;I)Landroidx/appcompat/view/menu/lz1;

    move-result-object v6

    const-string v7, "&gcs="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/lz1;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/fh1;->b(Landroid/os/Bundle;I)Landroidx/appcompat/view/menu/fh1;

    move-result-object v5

    const-string v6, "&dma="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fh1;->g()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_6

    move v6, v9

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fh1;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "&dma_cps="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fh1;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v3}, Landroidx/appcompat/view/menu/fh1;->d(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_8

    move v4, v9

    :cond_8
    const-string v3, "&npa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Consent query parameters to Bow"

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    const-wide/32 v4, 0x14051

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/tu1;->u:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v7

    const-wide/16 v10, 0x1

    sub-long/2addr v7, v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v0

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Landroidx/appcompat/view/menu/x92;->J(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->v()Landroidx/appcompat/view/menu/h32;

    move-result-object v2

    new-instance v7, Landroidx/appcompat/view/menu/gx1;

    invoke-direct {v7, p0}, Landroidx/appcompat/view/menu/gx1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {v4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v8

    new-instance v10, Landroidx/appcompat/view/menu/l32;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/l32;-><init>(Landroidx/appcompat/view/menu/h32;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Landroidx/appcompat/view/menu/f32;)V

    invoke-virtual {v8, v10}, Landroidx/appcompat/view/menu/jw1;->z(Ljava/lang/Runnable;)V

    :cond_a
    return v9

    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v9
.end method

.method public final v()Landroidx/appcompat/view/menu/h32;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->r:Landroidx/appcompat/view/menu/h32;

    invoke-static {v0}, Landroidx/appcompat/view/menu/cx1;->i(Landroidx/appcompat/view/menu/dz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->r:Landroidx/appcompat/view/menu/h32;

    return-object v0
.end method

.method public final w(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/cx1;->D:Z

    return-void
.end method

.method public final x()I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->q()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cx1;->F()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tu1;->M()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x7

    return v0

    :cond_a
    return v1
.end method

.method public final y()Landroidx/appcompat/view/menu/oh1;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->q:Landroidx/appcompat/view/menu/oh1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cx1;->g:Landroidx/appcompat/view/menu/qf1;

    return-object v0
.end method
